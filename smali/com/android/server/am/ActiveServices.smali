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

    .line 167
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    .line 168
    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    .line 170
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->LOG_SERVICE_START_STOP:Z

    .line 196
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    sput-object v1, Lcom/android/server/am/ActiveServices;->mPerf:Landroid/util/BoostFramework;

    .line 199
    sput-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 253
    sput-boolean v0, Lcom/android/server/am/ActiveServices;->isSupport:Z

    .line 258
    const/4 v1, 0x1

    new-array v2, v1, [I

    aput v1, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->isChina:Z

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.tencent.mm"

    const-string v3, "com.whatsapp"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/ActiveServices;->servicesCanRestartAnonList:Ljava/util/ArrayList;

    .line 263
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 207
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 249
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mWhiteListAllowWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 271
    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 1081
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.oneplus.factorymode"

    const-string v3, "com.oem.autotest"

    const-string v4, "com.oem.oemlogkit"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 1083
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mAppIdleWhitelist:Ljava/util/ArrayList;

    .line 464
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 465
    const/4 v1, 0x0

    .line 467
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

    .line 469
    goto :goto_0

    .line 468
    :catch_0
    move-exception v2

    .line 470
    :goto_0
    if-lez v1, :cond_0

    .line 471
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

    .line 473
    sget-object v0, Lcom/android/server/am/ActiveServices;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    .line 474
    const-string/jumbo v2, "ro.vendor.qti.am.reschedule_service"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 475
    :cond_2
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 152
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 152
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

    .line 152
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # I

    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    return-object v0
.end method

.method private appIsTopLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1519
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

    .line 580
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 582
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

    .line 3746
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3747
    return-void

    .line 3751
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3752
    return-void

    .line 3755
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3756
    return-void
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3761
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    move-object v3, v0

    .line 3762
    .local v3, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 3763
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 3764
    iget-wide v4, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v4, v4

    iput-wide v4, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 3765
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 3766
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    goto :goto_0

    .line 3768
    :cond_0
    iput v4, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 3769
    iput-boolean v5, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    .line 3773
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3774
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v0, v3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->destroyService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3779
    :cond_1
    goto :goto_1

    .line 3776
    :catch_0
    move-exception v0

    .line 3777
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "ActivityManager"

    const-string v8, "Failed to send destroy details to servicetracker HAL"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3778
    iput-object v6, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    .line 3782
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v7

    .line 3783
    .local v7, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "conni":I
    :goto_2
    if-ltz v9, :cond_3

    .line 3784
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/ArrayList;

    .line 3785
    .local v10, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 3786
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    .line 3789
    .local v12, "cr":Lcom/android/server/am/ConnectionRecord;
    iput-boolean v8, v12, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 3790
    invoke-virtual {v12}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 3792
    :try_start_1
    iget-object v0, v12, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v0, v13, v6, v8}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3797
    goto :goto_4

    .line 3793
    :catch_1
    move-exception v0

    .line 3794
    .local v0, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure disconnecting service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " to connection "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3795
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ConnectionRecord;

    iget-object v14, v14, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v14}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " (in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3796
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

    .line 3794
    const-string v14, "ActivityManager"

    invoke-static {v14, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3785
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "cr":Lcom/android/server/am/ConnectionRecord;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3783
    .end local v10    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v11    # "i":I
    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 3802
    .end local v9    # "conni":I
    :cond_3
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_7

    .line 3803
    const/4 v0, 0x0

    .line 3804
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

    .line 3805
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/am/IntentBindRecord;

    .line 3806
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

    .line 3808
    :cond_4
    iget-boolean v0, v11, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v0, :cond_5

    .line 3810
    :try_start_2
    const-string v0, "bring down unbind"

    invoke-direct {v1, v2, v5, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3811
    const/4 v9, 0x1

    .line 3812
    iput-boolean v5, v11, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 3813
    iput-boolean v5, v11, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 3814
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v12, v11, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 3815
    invoke-virtual {v12}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 3814
    invoke-interface {v0, v2, v12}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3822
    goto :goto_6

    .line 3816
    :catch_2
    move-exception v0

    .line 3817
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

    .line 3819
    const/4 v9, 0x0

    .line 3820
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3821
    goto :goto_7

    .line 3804
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_5
    :goto_6
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 3825
    .end local v10    # "i":I
    :cond_6
    :goto_7
    if-eqz v9, :cond_7

    .line 3826
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v11, "updateOomAdj_unbindService"

    invoke-virtual {v0, v10, v8, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3833
    .end local v9    # "needOomAdj":Z
    :cond_7
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_9

    .line 3834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bringing down service while still waiting for start foreground: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 3837
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 3838
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 3839
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_8

    .line 3840
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v9

    iget-wide v10, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v5, v9, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3843
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

    .line 3845
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0x42

    invoke-virtual {v9, v10, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3847
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_9

    .line 3848
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0x45

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3850
    .local v9, "msg":Landroid/os/Message;
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v10, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3851
    invoke-virtual {v9}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 3852
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3851
    const-string/jumbo v12, "servicerecord"

    invoke-virtual {v10, v12, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3853
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3857
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    .end local v9    # "msg":Landroid/os/Message;
    :cond_9
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_a

    .line 3858
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3859
    .local v0, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3860
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

    .line 3862
    .end local v0    # "here":Ljava/lang/RuntimeException;
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 3863
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->LOG_SERVICE_START_STOP:Z

    if-eqz v0, :cond_c

    .line 3864
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3865
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_b

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3864
    :cond_b
    invoke-static {v0, v9, v4}, Lcom/android/server/am/EventLogTags;->writeAmDestroyService(III)V

    .line 3868
    :cond_c
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    .line 3869
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    .line 3873
    .local v9, "found":Lcom/android/server/am/ServiceRecord;
    if-eqz v9, :cond_e

    if-ne v9, v2, :cond_d

    goto :goto_8

    .line 3876
    :cond_d
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3877
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

    .line 3880
    :cond_e
    :goto_8
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3881
    iput v5, v2, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3882
    invoke-direct {v1, v2, v5, v8}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 3885
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_10

    .line 3886
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_f

    .line 3887
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3888
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

    .line 3885
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3892
    .end local v0    # "i":I
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3893
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_12

    .line 3894
    invoke-direct {v1, v4, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 3895
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 3896
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_11

    .line 3897
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    iget-wide v11, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v5, v10, v11, v12}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 3900
    :cond_11
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 3901
    invoke-static {v10}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v12

    const/16 v13, 0x4c

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    .line 3900
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 3903
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3904
    const/16 v10, 0x3c

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/4 v13, 0x2

    iget-boolean v14, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    .line 3908
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v12, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 3911
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_12
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 3912
    iput v5, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 3913
    iput-object v6, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 3914
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 3917
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 3918
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3919
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3921
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15

    .line 3922
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v10

    monitor-enter v10

    .line 3923
    :try_start_3
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 3924
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3925
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 3926
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 3927
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_13

    .line 3928
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3930
    :cond_13
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_14

    .line 3931
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v5}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 3933
    :try_start_4
    const-string v0, "destroy"

    invoke-direct {v1, v2, v5, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3934
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3935
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 3936
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v11, "updateOomAdj_unbindService"

    invoke-virtual {v0, v10, v8, v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3938
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v2}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    .line 3939
    :catch_3
    move-exception v0

    .line 3940
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

    .line 3942
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3943
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    goto :goto_b

    .line 3945
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

    .line 3924
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 3949
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

    .line 3953
    :cond_16
    :goto_b
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 3954
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3957
    :cond_17
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v0, :cond_18

    .line 3958
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 3961
    :cond_18
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 3962
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3963
    .local v10, "now":J
    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v8, :cond_19

    .line 3964
    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v8, v5, v0, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 3965
    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v8, v5, v0, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3966
    iget v8, v2, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v8, :cond_19

    .line 3967
    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v8, v2, v5}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 3968
    iput-object v6, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3972
    :cond_19
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3973
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

    .line 3340
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

    .line 3341
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3342
    return-object v4

    .line 3345
    :cond_0
    if-nez p4, :cond_1

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3347
    return-object v4

    .line 3350
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v6, "ActivityManager"

    if-eqz v0, :cond_2

    .line 3351
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

    .line 3356
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3357
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3361
    :cond_3
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_5

    .line 3362
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

    .line 3363
    :cond_4
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3364
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 3369
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

    .line 3370
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

    .line 3373
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

    .line 3374
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3376
    return-object v0

    .line 3381
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

    .line 3384
    :catch_0
    move-exception v0

    .line 3385
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

    .line 3383
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 3387
    :goto_0
    nop

    .line 3389
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

    .line 3390
    .local v20, "isolated":Z
    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3391
    .local v15, "procName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/HostingRecord;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    const-string/jumbo v11, "service"

    invoke-direct {v0, v11, v10}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    move-object v10, v0

    .line 3394
    .local v10, "hostingRecord":Lcom/android/server/am/HostingRecord;
    if-nez v20, :cond_a

    .line 3395
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v15, v11, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v11

    .line 3396
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

    .line 3398
    :cond_8
    if-eqz v11, :cond_9

    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_9

    .line 3400
    :try_start_1
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v12, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11, v0, v12, v13, v14}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 3401
    invoke-direct {v1, v2, v11, v3}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3402
    return-object v4

    .line 3405
    :catch_2
    move-exception v0

    .line 3406
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

    .line 3407
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 3403
    :catch_3
    move-exception v0

    .line 3404
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    throw v0

    .line 3434
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    :cond_9
    :goto_3
    move-object v0, v10

    move-object v14, v11

    goto :goto_4

    .line 3419
    .end local v11    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_a
    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3420
    .restart local v11    # "app":Lcom/android/server/am/ProcessRecord;
    invoke-static {}, Landroid/webkit/WebViewZygote;->isMultiprocessEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3421
    invoke-static {}, Landroid/webkit/WebViewZygote;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3422
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/am/HostingRecord;->byWebviewZygote(Landroid/content/ComponentName;)Lcom/android/server/am/HostingRecord;

    move-result-object v10

    .line 3424
    :cond_b
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    .line 3425
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ServiceRecord;->definingUid:I

    invoke-static {v0, v12, v13}, Lcom/android/server/am/HostingRecord;->byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/am/HostingRecord;

    move-result-object v10

    move-object v0, v10

    move-object v14, v11

    goto :goto_4

    .line 3424
    :cond_c
    move-object v0, v10

    move-object v14, v11

    .line 3434
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

    .line 3440
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

    .line 3442
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

    .line 3445
    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": process is bad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3446
    .local v4, "msg":Ljava/lang/String;
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3448
    return-object v4

    .line 3450
    .end local v4    # "msg":Ljava/lang/String;
    :cond_f
    if-eqz v20, :cond_11

    .line 3451
    iput-object v14, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_7

    .line 3434
    .end local v22    # "procName":Ljava/lang/String;
    .restart local v15    # "procName":Ljava/lang/String;
    :cond_10
    move-object/from16 v21, v14

    move-object/from16 v22, v15

    .line 3455
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

    .line 3456
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v7, :cond_12

    .line 3457
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

    .line 3460
    :cond_12
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v9, 0x2710

    const-string v11, "fg-service-launch"

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistUidLocked(IJLjava/lang/String;)V

    .line 3464
    :cond_13
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 3465
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3468
    :cond_14
    iget-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v7, :cond_16

    .line 3470
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 3471
    iget-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_16

    .line 3472
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

    .line 3474
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3478
    :cond_16
    return-object v4
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fg"    # Z
    .param p3, "why"    # Ljava/lang/String;

    .line 2923
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

    .line 2925
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

    .line 2937
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2938
    .local v0, "timeoutNeeded":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2939
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too early to start/bind service in system_server: Phase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2942
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2941
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    const/4 v0, 0x0

    .line 2946
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2949
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

    .line 2952
    :cond_3
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v5, 0x1

    if-nez v4, :cond_6

    .line 2953
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2954
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v4

    .line 2955
    .local v4, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v4, :cond_4

    .line 2956
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    invoke-virtual {v4, v5, v6, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 2958
    :cond_4
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_7

    .line 2962
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

    .line 2965
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v6, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2966
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    or-int/2addr v7, p2

    iput-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2969
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bumpServiceExecutingLocked r.app.executingServices.size() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 2970
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2969
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    :cond_5
    if-eqz v0, :cond_7

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 2973
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 2976
    .end local v4    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_6
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_7

    if-eqz p2, :cond_7

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v3, :cond_7

    .line 2977
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2978
    if-eqz v0, :cond_8

    .line 2979
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_2

    .line 2976
    :cond_7
    :goto_1
    nop

    .line 2982
    :cond_8
    :goto_2
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v3, p2

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2983
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/2addr v3, v5

    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2984
    iput-wide v1, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 2985
    return-void
.end method

.method private cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 1961
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_2

    .line 1966
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1967
    .local v0, "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_1

    .line 1968
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1969
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1970
    .local v2, "other":Lcom/android/server/am/ServiceRecord;
    if-eq v2, p1, :cond_0

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1971
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1973
    return-void

    .line 1968
    .end local v2    # "other":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1977
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1979
    .end local v0    # "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_2
    return-void
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3319
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_2

    .line 3322
    const/4 v0, 0x0

    .line 3323
    .local v0, "stillTracking":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3324
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-ne v2, v3, :cond_0

    .line 3325
    const/4 v0, 0x1

    .line 3326
    goto :goto_1

    .line 3323
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3329
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 3330
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 3331
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3330
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 3332
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3335
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

    .line 4334
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v0, 0x0

    .line 4335
    .local v0, "didSomething":Z
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 4336
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 4337
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 4338
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 4340
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

    .line 4341
    .local v4, "sameComponent":Z
    :goto_2
    if-eqz v4, :cond_6

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2

    if-nez p3, :cond_2

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4342
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_6

    .line 4343
    :cond_2
    if-nez p4, :cond_3

    .line 4344
    return v2

    .line 4346
    :cond_3
    const/4 v0, 0x1

    .line 4347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force stopping service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4349
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4350
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4351
    iget-boolean v5, v3, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v5, :cond_4

    .line 4352
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4355
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 4356
    iput-object v5, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4357
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 4358
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 4360
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4335
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "sameComponent":Z
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 4363
    .end local v1    # "i":I
    :cond_7
    return v0
.end method

.method private decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 1418
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1419
    .local v0, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-eqz v0, :cond_2

    .line 1420
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1421
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    if-gtz v1, :cond_2

    .line 1422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1423
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    const-string v3, "Ended running of service"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_0
    iget-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1426
    iget-object v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    iput-boolean v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1428
    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_0

    .line 1429
    :cond_1
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 1430
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1434
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

    .line 5412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5413
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5414
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "SERVICE "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5415
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5416
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5417
    const-string v2, " pid="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5418
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 5419
    :cond_0
    const-string v2, "(not running)"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5420
    :goto_0
    if-eqz p6, :cond_1

    .line 5421
    invoke-virtual {p4, p3, v0}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5423
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5424
    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_2

    .line 5425
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Client:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5426
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 5428
    :try_start_1
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5430
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-interface {v2, v3, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 5431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 5432
    invoke-virtual {v1, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5434
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5435
    goto :goto_1

    .line 5434
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5435
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

    .line 5438
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

    .line 5439
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

    .line 5436
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 5437
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

    .line 5442
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    .line 5423
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

    .line 5447
    sput-boolean p0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    .line 5448
    sput-boolean p0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    .line 5449
    sput-boolean p0, Lcom/android/server/am/ActiveServices;->LOG_SERVICE_START_STOP:Z

    .line 5450
    return-void
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 2658
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 2659
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

    .line 2912
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2915
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2916
    const/4 v0, 0x3

    return v0

    .line 2918
    :cond_1
    return v0

    .line 2913
    :cond_2
    :goto_0
    return v0
.end method

.method private getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .locals 3
    .param p1, "callingUser"    # I

    .line 567
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 568
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_0

    .line 569
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    move-object v0, v1

    .line 570
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 572
    :cond_0
    return-object v0
.end method

.method private getServicetrackerInstance()Z
    .locals 4

    .line 498
    const-string v0, "ActivityManager"

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    if-nez v1, :cond_2

    .line 500
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->getService(Z)Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v2

    .line 504
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_0

    const-string v3, "Failed to get servicetracker interface"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    :cond_0
    return v1

    .line 501
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 506
    :goto_0
    nop

    .line 507
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    if-nez v2, :cond_2

    .line 508
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "servicetracker HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_1
    return v1

    .line 512
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private inAppIdleWhitelist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppIdleWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppIdleWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAppIdleWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1093
    .local v2, "appPackageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    return v1

    .line 1091
    .end local v2    # "appPackageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1098
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

    .line 3726
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3727
    return v1

    .line 3731
    :cond_0
    if-nez p2, :cond_1

    .line 3732
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    .line 3734
    :cond_1
    if-eqz p3, :cond_2

    .line 3735
    return v1

    .line 3738
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private maybeLogBindCrossProfileService(ILjava/lang/String;I)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 2427
    invoke-static {p3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2428
    return-void

    .line 2430
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2431
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 2432
    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2435
    :cond_1
    const/16 v1, 0x97

    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 2436
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v1

    .line 2437
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2438
    return-void

    .line 2433
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

    .line 3498
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_10

    .line 3501
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_0

    .line 3502
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

    .line 3504
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 3507
    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessRecord;->startService(Lcom/android/server/am/ServiceRecord;)Z

    move-result v12

    .line 3508
    .local v12, "newService":Z
    const-string v0, "create"

    invoke-direct {v1, v9, v11, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3509
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v13, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3510
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v13}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 3511
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_startService"

    invoke-virtual {v0, v10, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3513
    const/4 v3, 0x0

    .line 3515
    .local v3, "created":Z
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->LOG_SERVICE_START_STOP:Z

    if-eqz v0, :cond_2

    .line 3517
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 3518
    .local v0, "lastPeriod":I
    if-ltz v0, :cond_1

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3519
    :cond_1
    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    :goto_0
    nop

    .line 3520
    .local v4, "nameTerm":Ljava/lang/String;
    iget v5, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3521
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3520
    invoke-static {v5, v6, v4, v7, v8}, Lcom/android/server/am/EventLogTags;->writeAmCreateService(IILjava/lang/String;II)V

    .line 3523
    .end local v0    # "lastPeriod":I
    .end local v4    # "nameTerm":Ljava/lang/String;
    :cond_2
    const/16 v0, 0x64

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 3524
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 3523
    invoke-static {v0, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;)V

    .line 3525
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3526
    :try_start_1
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    .line 3527
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3528
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v0, v4, v14}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 3530
    const/16 v0, 0xa

    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 3533
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

    .line 3535
    :cond_3
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3536
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    .line 3537
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v6

    .line 3535
    invoke-interface {v0, v9, v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 3538
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3539
    const/4 v15, 0x1

    .line 3541
    .end local v3    # "created":Z
    .local v15, "created":Z
    :try_start_3
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    move-object v3, v0

    .line 3542
    .local v3, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 3543
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 3544
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 3545
    iget-wide v4, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v4, v4

    iput-wide v4, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 3546
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iput-boolean v0, v3, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3549
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3550
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v0, v3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->startService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3555
    :cond_4
    goto :goto_1

    .line 3552
    :catch_0
    move-exception v0

    .line 3553
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "ActivityManager"

    const-string v5, "Failed to send start details to servicetracker HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3554
    iput-object v2, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3561
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    :goto_1
    if-nez v15, :cond_6

    .line 3563
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3564
    .local v0, "inDestroying":Z
    invoke-direct {v1, v9, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3567
    if-eqz v12, :cond_5

    .line 3568
    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 3569
    iput-object v2, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3570
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v3, :cond_5

    .line 3571
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

    .line 3578
    :cond_5
    if-nez v0, :cond_6

    .line 3579
    invoke-direct {v1, v9, v13}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3584
    .end local v0    # "inDestroying":Z
    :cond_6
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_7

    .line 3585
    iput-boolean v14, v10, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 3588
    :cond_7
    invoke-direct {v1, v9, v11}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 3590
    invoke-direct {v1, v10, v2, v14}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 3592
    if-eqz v12, :cond_8

    if-eqz v15, :cond_8

    .line 3593
    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessRecord;->addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V

    .line 3599
    :cond_8
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 3600
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

    .line 3604
    :cond_9
    invoke-direct {v1, v9, v11, v14}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3606
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_b

    .line 3607
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

    .line 3608
    :cond_a
    iget v0, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3609
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    goto :goto_2

    .line 3606
    :cond_b
    const/4 v2, 0x0

    .line 3612
    :goto_2
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_d

    .line 3614
    iput-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 3615
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_d

    .line 3616
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

    .line 3618
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3621
    :cond_d
    return-void

    .line 3561
    :catchall_0
    move-exception v0

    move v3, v15

    goto :goto_4

    .line 3556
    :catch_1
    move-exception v0

    move v3, v15

    goto :goto_3

    .line 3527
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

    .line 3561
    .restart local v3    # "created":Z
    .restart local v12    # "newService":Z
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p3    # "execInFg":Z
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 3556
    :catch_2
    move-exception v0

    .line 3557
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

    .line 3558
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "Died when creating service"

    invoke-virtual {v4, v10, v5}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3559
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

    .line 3561
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .restart local v3    # "created":Z
    .restart local v12    # "newService":Z
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices;
    .restart local p1    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local p2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p3    # "execInFg":Z
    :goto_4
    if-nez v3, :cond_f

    .line 3563
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 3564
    .local v4, "inDestroying":Z
    invoke-direct {v1, v9, v4, v4}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3567
    if-eqz v12, :cond_e

    .line 3568
    invoke-virtual {v10, v9}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 3569
    iput-object v2, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3570
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v2, :cond_e

    .line 3571
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

    .line 3578
    :cond_e
    if-nez v4, :cond_f

    .line 3579
    const/4 v2, 0x0

    invoke-direct {v1, v9, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3582
    .end local v4    # "inDestroying":Z
    :cond_f
    throw v0

    .line 3499
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

    .line 1775
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    .line 1776
    return-void

    .line 1778
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1779
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    .line 1780
    .local v1, "callback":Lcom/android/server/am/ActiveServices$AppOpCallback;
    if-nez v1, :cond_1

    .line 1781
    new-instance v2, Lcom/android/server/am/ActiveServices$AppOpCallback;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/ActiveServices$AppOpCallback;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V

    move-object v1, v2

    .line 1782
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1784
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->registerLocked()V

    .line 1785
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

    .line 2989
    const-string v0, "Crashed while binding "

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2993
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

    .line 2995
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

    .line 2997
    :try_start_0
    const-string v1, "bind"

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2998
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2999
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3000
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v6

    .line 2999
    invoke-interface {v1, p1, v5, p4, v6}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 3001
    if-nez p4, :cond_3

    .line 3002
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 3004
    :cond_3
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 3005
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3018
    goto :goto_0

    .line 3012
    :catch_0
    move-exception v1

    .line 3013
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

    .line 3015
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3016
    .local v0, "inDestroying":Z
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3017
    return v2

    .line 3006
    .end local v0    # "inDestroying":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3008
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

    .line 3009
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3010
    .restart local v0    # "inDestroying":Z
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3011
    throw v1

    .line 3020
    .end local v0    # "inDestroying":Z
    .end local v1    # "e":Landroid/os/TransactionTooLargeException;
    :cond_6
    :goto_0
    return v4

    .line 2991
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

    .line 3483
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3484
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 3485
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3486
    goto :goto_1

    .line 3483
    .end local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3489
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

    .line 870
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

    .line 874
    const-string/jumbo v3, "u"

    const-string v5, "ActivityManager"

    const/4 v6, 0x0

    if-nez p6, :cond_0

    .line 875
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

    .line 877
    return v6

    .line 880
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

    .line 883
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    const/high16 v19, 0x54000000

    const/16 v20, 0x0

    .line 880
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p7

    move-object/from16 v17, v7

    move-object/from16 v18, v4

    invoke-virtual/range {v8 .. v20}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v4

    .line 887
    .local v4, "target":Landroid/content/IIntentSender;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v8, 0x18800000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 891
    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v9, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    new-instance v8, Landroid/content/IntentSender;

    invoke-direct {v8, v4}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 894
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v8, :cond_1

    .line 895
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

    .line 899
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ActiveServices$2;

    move/from16 v8, p7

    invoke-direct {v5, v0, v7, v8}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 906
    return v6

    .line 909
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

    .line 1407
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1408
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 1409
    nop

    .line 1410
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1409
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1412
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1413
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 1415
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

    .line 2691
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v8, p4

    move/from16 v7, p5

    move/from16 v6, p6

    const/4 v0, 0x0

    .line 2692
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

    .line 2695
    :goto_0
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v15, 0x0

    .line 2696
    invoke-direct {v1, v9, v8}, Lcom/android/server/am/ActiveServices;->getAllowMode(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v16

    .line 2695
    const-string/jumbo v17, "service"

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v18, p4

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2699
    .end local p7    # "userId":I
    .local v11, "userId":I
    invoke-direct {v1, v11}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v12

    .line 2701
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v10, :cond_1

    .line 2702
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v13, v2

    .local v2, "comp":Landroid/content/ComponentName;
    goto :goto_1

    .line 2704
    .end local v2    # "comp":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2705
    .local v2, "realComp":Landroid/content/ComponentName;
    if-eqz v2, :cond_27

    .line 2709
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2710
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

    .line 2712
    .end local v2    # "realComp":Landroid/content/ComponentName;
    .local v13, "comp":Landroid/content/ComponentName;
    :goto_1
    if-eqz v13, :cond_2

    .line 2713
    iget-object v2, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 2714
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

    .line 2716
    :cond_2
    if-nez v0, :cond_3

    if-nez p10, :cond_3

    if-nez v10, :cond_3

    .line 2717
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, v9}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2718
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 2719
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

    .line 2721
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 2722
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2725
    const/4 v0, 0x0

    .line 2726
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_4

    const-string v2, "ActivityManager"

    const-string v3, "Whoops, can\'t use existing external service"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    :cond_4
    move-object v14, v0

    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    .local v14, "r":Lcom/android/server/am/ServiceRecord;
    const/4 v15, 0x0

    if-nez v14, :cond_1e

    .line 2730
    const v0, 0x10000400

    .line 2732
    .local v0, "flags":I
    if-eqz p11, :cond_5

    .line 2733
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    move/from16 v16, v0

    goto :goto_2

    .line 2732
    :cond_5
    move/from16 v16, v0

    .line 2736
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

    .line 2738
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_6

    :try_start_2
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 2857
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "flags":I
    :catch_0
    move-exception v0

    move/from16 v15, p6

    goto/16 :goto_13

    .line 2738
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "flags":I
    :cond_6
    move-object v0, v15

    .line 2739
    .local v0, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_3
    if-nez v0, :cond_7

    .line 2740
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

    .line 2742
    return-object v15

    .line 2744
    :cond_7
    if-eqz v10, :cond_9

    iget v2, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 2746
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

    .line 2749
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

    .line 2751
    .local v2, "className":Landroid/content/ComponentName;
    if-eqz v13, :cond_a

    move-object v3, v13

    goto :goto_5

    :cond_a
    move-object v3, v2

    .line 2752
    .local v3, "name":Landroid/content/ComponentName;
    :goto_5
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 2753
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_d

    .line 2752
    move/from16 v15, p6

    :try_start_4
    invoke-virtual {v4, v8, v15, v5, v6}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_c

    if-nez v4, :cond_b

    .line 2754
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "association not allowed between packages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2755
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2756
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

    .line 2757
    new-instance v5, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v4}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    return-object v5

    .line 2857
    .end local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "className":Landroid/content/ComponentName;
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v16    # "flags":I
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v0

    goto/16 :goto_13

    .line 2763
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

    .line 2764
    .local v23, "definingPackageName":Ljava/lang/String;
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v4

    .line 2765
    .local v24, "definingUid":I
    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_c

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_11

    .line 2766
    if-eqz p10, :cond_10

    .line 2767
    :try_start_7
    iget-boolean v4, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v4, :cond_f

    .line 2771
    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_e

    .line 2776
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x400

    invoke-interface {v4, v8, v5, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2778
    .local v4, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_d

    .line 2782
    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5, v0}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    move-object v0, v5

    .line 2783
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2784
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2785
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2786
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    .line 2787
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2788
    if-nez v10, :cond_c

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v0

    goto :goto_6

    .line 2789
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

    .line 2790
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2791
    move-object/from16 v29, v2

    move-object v6, v3

    move-object/from16 v7, v18

    .end local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_7

    .line 2779
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

    .line 2772
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

    .line 2768
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

    .line 2792
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

    .line 2795
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

    .line 2799
    .end local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "className":Landroid/content/ComponentName;
    .end local v3    # "name":Landroid/content/ComponentName;
    .local v6, "name":Landroid/content/ComponentName;
    .local v7, "sInfo":Landroid/content/pm/ServiceInfo;
    .local v29, "className":Landroid/content/ComponentName;
    :goto_7
    if-lez v11, :cond_15

    .line 2800
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

    .line 2802
    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2803
    const/4 v11, 0x0

    .line 2804
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_c

    move-object v12, v0

    .line 2806
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    move-wide/from16 v18, v2

    .line 2808
    .local v18, "token":J
    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 2809
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

    .line 2811
    .local v0, "rInfoForUserId0":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_12

    .line 2812
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

    .line 2815
    nop

    .line 2819
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    .line 2815
    const/4 v2, 0x0

    return-object v2

    .line 2817
    :cond_12
    :try_start_d
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v7, v2

    .line 2819
    .end local v0    # "rInfoForUserId0":Landroid/content/pm/ResolveInfo;
    .end local v17    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    :try_start_e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2820
    move-object/from16 v4, v20

    goto :goto_a

    .line 2819
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

    .line 2820
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

    .line 2857
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

    .line 2802
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

    .line 2800
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

    .line 2822
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

    .line 2823
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v11}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_b

    .line 2799
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

    .line 2825
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

    .line 2826
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

    .line 2857
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

    .line 2828
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

    .line 2829
    :try_start_13
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 2830
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object v3, v0

    .line 2831
    .local v3, "filter":Landroid/content/Intent$FilterComparison;
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    move-object v5, v0

    .line 2833
    .local v5, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    move-object v6, v0

    .line 2834
    .local v6, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v6
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9

    .line 2835
    :try_start_14
    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2836
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 2837
    move-object/from16 v17, v2

    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .local v17, "r":Lcom/android/server/am/ServiceRecord;
    :try_start_15
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2835
    invoke-virtual {v6, v0, v14, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v20

    .line 2838
    .local v20, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 2839
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

    .line 2841
    .end local v17    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :try_start_17
    iput-object v8, v2, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 2842
    invoke-virtual {v5, v2}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 2843
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2844
    iget-object v0, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1a

    .line 2848
    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    .line 2849
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

    .line 2850
    invoke-virtual {v3, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2851
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

    .line 2852
    .end local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :goto_e
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    .line 2850
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :cond_18
    move-object/from16 v21, v5

    .end local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    goto :goto_f

    .line 2849
    .end local v21    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v5    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    :cond_19
    move-object/from16 v21, v5

    .line 2847
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

    .line 2855
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

    .line 2859
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

    .line 2857
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

    .line 2838
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

    .line 2857
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

    .line 2838
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

    .line 2828
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

    .line 2859
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

    .line 2857
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

    .line 2796
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

    .line 2857
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

    .line 2728
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_1e
    move v15, v6

    move-object v4, v12

    .line 2861
    :goto_13
    if-eqz v14, :cond_26

    .line 2862
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v8, v15, v2, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2864
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

    .line 2866
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

    .line 2867
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v2

    .line 2869
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

    .line 2871
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v2, "blocked by firewall"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2875
    :cond_20
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/oneplus/android/permission/PermissionInjector;->skipCheckComponentPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    move/from16 v5, p5

    const/4 v2, 0x0

    goto/16 :goto_14

    .line 2880
    :cond_21
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, v14, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v5, p5

    invoke-static {v0, v5, v15, v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_23

    .line 2882
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v0, :cond_22

    .line 2883
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

    .line 2887
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

    .line 2890
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

    .line 2894
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2895
    :cond_23
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_25

    if-eqz v9, :cond_25

    .line 2896
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 2897
    .local v0, "opCode":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_24

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v15, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_24

    .line 2899
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

    .line 2902
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2899
    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    const/4 v2, 0x0

    return-object v2

    .line 2897
    :cond_24
    const/4 v2, 0x0

    goto :goto_14

    .line 2895
    .end local v0    # "opCode":I
    :cond_25
    const/4 v2, 0x0

    .line 2906
    :goto_14
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2908
    :cond_26
    move/from16 v5, p5

    move-object v9, v8

    const/4 v2, 0x0

    return-object v2

    .line 2706
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

    .line 3025
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

    .line 3026
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

    .line 3028
    return v4

    .line 3031
    :cond_0
    iget v3, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v0, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    .line 3032
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v6, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v1, :cond_1

    .line 3033
    iget-object v6, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 3034
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

    .line 3036
    return v4

    .line 3039
    .end local v6    # "cur":Lcom/android/server/am/ServiceRecord;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3049
    .local v6, "now":J
    const/4 v8, 0x0

    .line 3051
    .local v8, "restartImeNow":Z
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Lcom/android/server/wm/OpQuickReplyInjector;->isInIMEKilledList(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3053
    const/4 v8, 0x1

    .line 3054
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QuickReply: Restart IME now for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
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

    .line 3059
    iget-object v11, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 3060
    .local v11, "minDuration":J
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v10, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 3061
    .local v9, "resetTime":J
    const/16 v18, 0x0

    .line 3065
    .local v18, "canceled":Z
    iget-object v15, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3068
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

    .line 3071
    .end local v8    # "restartImeNow":Z
    .end local v9    # "resetTime":J
    .restart local v19    # "restartImeNow":Z
    .restart local v21    # "resetTime":J
    :goto_0
    const-string v8, " allowCancel "

    if-lez v15, :cond_b

    .line 3072
    add-int/lit8 v9, v15, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_a

    .line 3073
    iget-object v10, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3074
    .local v10, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 3075
    move-object/from16 v23, v13

    iget-object v13, v10, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v13, :cond_4

    move-wide/from16 v25, v6

    move-object/from16 v24, v14

    goto/16 :goto_4

    .line 3077
    :cond_4
    if-eqz v2, :cond_6

    iget v13, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    const/4 v0, 0x3

    if-ge v13, v0, :cond_5

    iget v0, v10, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const/4 v13, 0x6

    if-ge v0, v13, :cond_5

    goto :goto_2

    .line 3093
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

    .line 3095
    const/16 v18, 0x1

    move-wide/from16 v25, v6

    move-object/from16 v24, v14

    goto/16 :goto_4

    .line 3079
    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3080
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object v0, v14

    iget-wide v13, v10, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    sub-long v24, v24, v13

    .line 3081
    .local v24, "dur":J
    const-wide/16 v13, 0x2

    mul-long v13, v13, v24

    .line 3082
    .end local v24    # "dur":J
    .local v13, "dur":J
    sget-boolean v24, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v24, :cond_7

    sget-boolean v24, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v24, :cond_7

    .line 3083
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

    .line 3082
    .end local v25    # "now":J
    .restart local v6    # "now":J
    :cond_7
    move-object/from16 v24, v0

    move-wide/from16 v25, v6

    .line 3090
    .end local v6    # "now":J
    .restart local v25    # "now":J
    :goto_3
    cmp-long v0, v11, v13

    if-gez v0, :cond_8

    move-wide v6, v13

    move-wide v11, v6

    .line 3091
    :cond_8
    cmp-long v0, v21, v13

    if-gez v0, :cond_9

    move-wide v6, v13

    move-wide/from16 v21, v6

    .line 3092
    .end local v13    # "dur":J
    :cond_9
    nop

    .line 3072
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

    .line 3098
    .end local v6    # "now":J
    .end local v9    # "i":I
    .restart local v25    # "now":J
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move/from16 v0, v18

    move-wide/from16 v9, v21

    goto :goto_5

    .line 3071
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

    .line 3101
    .end local v18    # "canceled":Z
    .end local v21    # "resetTime":J
    .local v0, "canceled":Z
    .local v9, "resetTime":J
    :goto_5
    if-eqz v2, :cond_e

    .line 3102
    invoke-virtual {v1, v0}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v6

    .line 3103
    .local v6, "shouldStop":Z
    if-eqz v6, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v7

    if-nez v7, :cond_c

    .line 3105
    const/4 v3, 0x0

    return v3

    .line 3107
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

    .line 3108
    .local v6, "reason":Ljava/lang/String;
    goto :goto_7

    .line 3109
    .end local v6    # "reason":Ljava/lang/String;
    :cond_e
    const-string v6, "always"

    .line 3112
    .restart local v6    # "reason":Ljava/lang/String;
    :goto_7
    iget v7, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v13, 0x1

    add-int/2addr v7, v13

    iput v7, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3115
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

    .line 3118
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

    .line 3119
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

    .line 3118
    .end local v28    # "now":J
    .restart local v25    # "now":J
    :cond_10
    move-object/from16 v27, v6

    move-object/from16 v22, v13

    move-object/from16 v13, v24

    move-wide/from16 v28, v25

    move-object/from16 v25, v7

    .line 3125
    .end local v25    # "now":J
    .restart local v28    # "now":J
    :goto_8
    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v16, 0x0

    cmp-long v4, v6, v16

    if-nez v4, :cond_11

    .line 3126
    iget v4, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 3127
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    move-object/from16 v4, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v14

    move/from16 v24, v15

    goto :goto_9

    .line 3128
    :cond_11
    const/4 v6, 0x1

    iget v4, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-le v4, v6, :cond_12

    .line 3129
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

    .line 3137
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

    .line 3138
    iput v6, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 3139
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_9

    .line 3149
    :cond_13
    sget-object v2, Lcom/android/server/am/ActiveServices;->servicesCanRestartAnonList:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3150
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_9

    .line 3152
    :cond_14
    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    iget-object v2, v4, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    int-to-long v14, v2

    mul-long/2addr v6, v14

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3153
    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v2, v6, v11

    if-gez v2, :cond_15

    .line 3154
    iput-wide v11, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3162
    :cond_15
    :goto_9
    const/4 v2, 0x0

    .line 3163
    .local v2, "mUseDuration":Z
    sget-boolean v6, Lcom/android/server/am/ActiveServices;->isChina:Z

    const/16 v7, 0x10

    if-eqz v6, :cond_16

    iget v6, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    if-le v6, v7, :cond_16

    .line 3164
    const/4 v2, 0x1

    .line 3165
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

    .line 3163
    .end local v14    # "now":J
    .restart local v28    # "now":J
    :cond_16
    move-wide/from16 v14, v28

    .line 3172
    .end local v28    # "now":J
    .restart local v14    # "now":J
    :goto_a
    if-eqz v2, :cond_17

    iget-wide v6, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_17

    .line 3173
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

    .line 3172
    :cond_17
    move-object v8, v5

    .line 3177
    :goto_b
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long v6, v14, v4

    iput-wide v6, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3178
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v4, :cond_18

    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v4, :cond_18

    .line 3179
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

    .line 3178
    .end local v5    # "N":I
    .restart local v24    # "N":I
    :cond_18
    move/from16 v3, p2

    move-object/from16 v0, v23

    move/from16 v5, v24

    .line 3191
    .end local v24    # "N":I
    .restart local v5    # "N":I
    :goto_c
    const/4 v4, 0x0

    .line 3192
    .local v4, "repeat":Z
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v22, v2

    .end local v2    # "mUseDuration":Z
    .local v22, "mUseDuration":Z
    iget-wide v2, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 3193
    .local v2, "restartTimeBetween":J
    iget-object v7, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_d
    if-ltz v7, :cond_1b

    .line 3194
    move/from16 v16, v4

    .end local v4    # "repeat":Z
    .local v16, "repeat":Z
    iget-object v4, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3195
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

    .line 3197
    iget-wide v9, v4, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v9, v2

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3198
    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v9, v14

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3199
    const/4 v9, 0x1

    .line 3200
    .end local v16    # "repeat":Z
    .local v9, "repeat":Z
    move v4, v9

    goto :goto_e

    .line 3195
    .end local v23    # "resetTime":J
    .end local v25    # "minDuration":J
    .local v9, "resetTime":J
    .restart local v11    # "minDuration":J
    .restart local v16    # "repeat":Z
    :cond_19
    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    .line 3193
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

    .line 3203
    .end local v2    # "restartTimeBetween":J
    .end local v7    # "i":I
    .end local v9    # "resetTime":J
    .end local v11    # "minDuration":J
    .restart local v23    # "resetTime":J
    .restart local v25    # "minDuration":J
    :goto_e
    if-nez v4, :cond_1c

    .line 3205
    .end local v4    # "repeat":Z
    .end local v5    # "N":I
    .end local v18    # "canceled":Z
    .end local v22    # "mUseDuration":Z
    .end local v23    # "resetTime":J
    .end local v25    # "minDuration":J
    move-object/from16 v2, v21

    goto :goto_f

    .line 3203
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

    .line 3057
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

    .line 3208
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

    .line 3209
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 3210
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 3211
    iput-wide v14, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3212
    const-string/jumbo v2, "persistent"

    .line 3215
    .local v2, "reason":Ljava/lang/String;
    :goto_f
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3216
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 3217
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3218
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-virtual {v1, v3, v14, v15}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 3221
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3225
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

    .line 3229
    :cond_1f
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3230
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v3, v9

    iput-wide v3, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 3232
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

    .line 3235
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v0, :cond_20

    .line 3236
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_20

    .line 3237
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 3238
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

    .line 3236
    .end local v3    # "r2":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 3243
    .end local v0    # "i":I
    :cond_20
    const/16 v0, 0x7553

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3244
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

    .line 3243
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3248
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleServiceRestartLocked r "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " call by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3249
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3248
    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
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

    .line 3625
    const-string v0, "Failed delivering service starts"

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3626
    .local v1, "N":I
    if-nez v1, :cond_0

    .line 3627
    return-void

    .line 3630
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3632
    .local v2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ServiceStartArgs;>;"
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "ActivityManager"

    if-lez v3, :cond_c

    .line 3633
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3634
    .local v3, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_1

    .line 3635
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

    .line 3638
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v7, 0x1

    if-nez v6, :cond_2

    if-le v1, v7, :cond_2

    .line 3643
    goto :goto_0

    .line 3645
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 3646
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3647
    iget v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 3648
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v6, :cond_3

    .line 3649
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v8, v3, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 3650
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v9

    .line 3649
    invoke-interface {v6, v8, v9}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 3652
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v8, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v9, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget v10, v3, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3653
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 3652
    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    .line 3655
    const-string/jumbo v6, "start"

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3656
    if-nez p3, :cond_4

    .line 3657
    const/4 p3, 0x1

    .line 3658
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v9, "updateOomAdj_startService"

    invoke-virtual {v6, v8, v7, v9}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 3660
    :cond_4
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-nez v6, :cond_8

    .line 3661
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v6, :cond_6

    .line 3662
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v4, :cond_5

    .line 3663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launched service must call startForeground() within timeout: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_1

    .line 3667
    :cond_6
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v6, :cond_7

    .line 3668
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service already foreground; no new timeout: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    :cond_7
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 3673
    :cond_8
    :goto_1
    const/4 v4, 0x0

    .line 3674
    .local v4, "flags":I
    iget v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v6, v7, :cond_9

    .line 3675
    or-int/lit8 v4, v4, 0x2

    .line 3677
    :cond_9
    iget v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v6, :cond_a

    .line 3678
    or-int/lit8 v4, v4, 0x1

    .line 3680
    :cond_a
    new-instance v6, Landroid/app/ServiceStartArgs;

    iget-boolean v7, v3, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v8, v3, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v9, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-direct {v6, v7, v8, v4, v9}, Landroid/app/ServiceStartArgs;-><init>(ZIILandroid/content/Intent;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3684
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_b

    .line 3685
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

    .line 3689
    .end local v3    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .end local v4    # "flags":I
    :cond_b
    goto/16 :goto_0

    .line 3691
    :cond_c
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 3692
    .local v3, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ServiceStartArgs;>;"
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    .line 3693
    const/4 v6, 0x0

    .line 3695
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

    .line 3706
    :catch_0
    move-exception v0

    .line 3707
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Unexpected exception"

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3708
    move-object v6, v0

    goto :goto_3

    .line 3701
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 3703
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

    .line 3704
    :cond_d
    invoke-static {v5, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3705
    move-object v6, v4

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 3696
    :catch_2
    move-exception v7

    .line 3697
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

    .line 3698
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ServiceStartArgs;

    iget-object v4, v4, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3697
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    :cond_e
    invoke-static {v5, v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3700
    move-object v6, v7

    .line 3709
    .end local v7    # "e":Landroid/os/TransactionTooLargeException;
    :goto_2
    nop

    .line 3711
    :goto_3
    if-eqz v6, :cond_11

    .line 3713
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3714
    .local v0, "inDestroying":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 3715
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3714
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3717
    .end local v4    # "i":I
    :cond_f
    instance-of v4, v6, Landroid/os/TransactionTooLargeException;

    if-nez v4, :cond_10

    goto :goto_5

    .line 3718
    :cond_10
    move-object v4, v6

    check-cast v4, Landroid/os/TransactionTooLargeException;

    throw v4

    .line 3721
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

    .line 4194
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

    .line 4197
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

    .line 4199
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4200
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_e

    .line 4201
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 4202
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

    .line 4204
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 4205
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4208
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "r.app.executingServices.size(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 4209
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4208
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 4212
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

    .line 4214
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0xc

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4218
    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8

    .line 4219
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

    .line 4223
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v0, :cond_8

    .line 4225
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_8

    .line 4226
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v4, :cond_7

    .line 4227
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v4, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 4228
    goto :goto_2

    .line 4225
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4232
    .end local v0    # "i":I
    :cond_8
    :goto_2
    if-eqz p2, :cond_a

    .line 4233
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

    .line 4235
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4236
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4238
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "updateOomAdj_unbindService"

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 4240
    :cond_b
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 4241
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4242
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 4243
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4244
    .local v4, "now":J
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 4245
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4246
    if-eqz p3, :cond_c

    .line 4247
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 4248
    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 4251
    .end local v0    # "memFactor":I
    .end local v4    # "now":J
    :cond_c
    if-eqz p3, :cond_e

    .line 4252
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4253
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4254
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4255
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_d

    .line 4256
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4259
    :cond_d
    invoke-virtual {p1, v1}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 4262
    :cond_e
    return-void
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4181
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    .line 4182
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 4183
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4184
    .local v1, "now":J
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 4185
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4186
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 4187
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 4189
    .end local v0    # "memFactor":I
    .end local v1    # "now":J
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 4190
    return-void
.end method

.method private setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    .locals 27
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "flags"    # I
    .param p5, "foregroundServiceType"    # I

    .line 1527
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x2

    const-string v6, "ActivityManager"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_1f

    .line 1528
    if-eqz v4, :cond_1e

    .line 1532
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    const-string/jumbo v10, "startForeground"

    if-eqz v9, :cond_3

    .line 1533
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

    .line 1537
    .local v9, "mode":I
    if-eqz v9, :cond_2

    const-string v11, "Instant app "

    if-eq v9, v8, :cond_1

    if-eq v9, v5, :cond_0

    .line 1549
    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v14, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    invoke-virtual {v11, v14, v12, v13, v10}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 1546
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

    .line 1541
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

    .line 1544
    return-void

    .line 1539
    :cond_2
    nop

    .line 1553
    .end local v9    # "mode":I
    :goto_0
    move/from16 v10, p5

    goto :goto_2

    .line 1554
    :cond_3
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x1c

    if-lt v9, v11, :cond_4

    .line 1555
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v9, v13, v11, v12, v10}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1560
    :cond_4
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v9

    .line 1563
    .local v9, "manifestType":I
    const/4 v10, -0x1

    move/from16 v11, p5

    if-ne v11, v10, :cond_5

    .line 1564
    move v10, v9

    .end local p5    # "foregroundServiceType":I
    .local v10, "foregroundServiceType":I
    goto :goto_1

    .line 1563
    .end local v10    # "foregroundServiceType":I
    .restart local p5    # "foregroundServiceType":I
    :cond_5
    move v10, v11

    .line 1568
    .end local p5    # "foregroundServiceType":I
    .restart local v10    # "foregroundServiceType":I
    :goto_1
    and-int v11, v10, v9

    if-ne v11, v10, :cond_1d

    .line 1577
    iget-boolean v11, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-nez v11, :cond_6

    .line 1578
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Foreground service started from background can not have location/camera/microphone access: service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    .end local v9    # "manifestType":I
    :cond_6
    :goto_2
    const/4 v9, 0x0

    .line 1585
    .local v9, "alreadyStartedOp":Z
    const/4 v11, 0x0

    .line 1586
    .local v11, "stopProcStatsOp":Z
    iget-boolean v12, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v12, :cond_9

    .line 1587
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-nez v12, :cond_7

    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v12, :cond_8

    .line 1588
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Service called startForeground() as required: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_8
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 1591
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 1592
    move v11, v8

    move v9, v8

    .line 1593
    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v13, 0x42

    invoke-virtual {v12, v13, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1598
    :cond_9
    const/4 v12, 0x0

    .line 1599
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

    .line 1601
    .local v0, "mode":I
    if-eqz v0, :cond_c

    if-eq v0, v8, :cond_b

    const/4 v13, 0x3

    if-ne v0, v13, :cond_a

    goto :goto_3

    .line 1613
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

    .line 1608
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

    .line 1610
    const/4 v12, 0x1

    .line 1611
    goto :goto_4

    .line 1605
    :cond_c
    :goto_3
    nop

    .line 1618
    :goto_4
    if-nez v12, :cond_d

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1619
    invoke-direct {v1, v13}, Lcom/android/server/am/ActiveServices;->appIsTopLocked(I)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1620
    invoke-direct {v1, v13, v14}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1621
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service.startForeground() not allowed due to bg restriction: service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v13, v7}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1627
    const/4 v12, 0x1

    .line 1634
    :cond_d
    if-nez v12, :cond_17

    .line 1635
    iget v6, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v6, v3, :cond_e

    .line 1636
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1637
    iput v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1639
    :cond_e
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 1640
    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1641
    iput v10, v2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1642
    iget-boolean v6, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v6, :cond_15

    .line 1643
    iget v6, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v6

    .line 1644
    .local v6, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v6, :cond_12

    .line 1645
    iget-object v13, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1646
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1647
    .local v13, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-nez v13, :cond_11

    .line 1648
    new-instance v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    invoke-direct {v14}, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;-><init>()V

    move-object v13, v14

    .line 1649
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 1650
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 1651
    iget-boolean v14, v1, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iput-boolean v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1652
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_10

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v14, :cond_10

    .line 1653
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 1654
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

    .line 1657
    :cond_10
    nop

    .line 1658
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    .line 1659
    iget-object v14, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v15, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    const-wide/16 v14, 0x0

    invoke-direct {v1, v6, v14, v15}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1662
    :cond_11
    iget v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    add-int/2addr v14, v8

    iput v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1664
    .end local v13    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_12
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1665
    if-nez v11, :cond_14

    .line 1666
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v13

    .line 1667
    .local v13, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v13, :cond_13

    .line 1668
    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1669
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v14

    move-object/from16 p5, v6

    .end local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local p5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-wide v5, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1668
    invoke-virtual {v13, v8, v14, v5, v6}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    goto :goto_6

    .line 1667
    .end local p5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_13
    move-object/from16 p5, v6

    .line 1671
    .end local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v13    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    .restart local p5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :goto_6
    goto :goto_7

    .line 1672
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

    .line 1674
    .end local v5    # "stopProcStatsOp":Z
    .restart local v11    # "stopProcStatsOp":Z
    :goto_7
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1675
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

    .line 1674
    move-object/from16 v17, v5

    move/from16 v20, v6

    move-object/from16 v21, v13

    invoke-virtual/range {v17 .. v26}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)I

    .line 1678
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    const/16 v14, 0x3c

    invoke-static {v14, v5, v6, v8, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    .line 1682
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1683
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v13, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v5, v6, v13, v8}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1685
    .end local p5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 1686
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_16

    .line 1687
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v5, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1689
    :cond_16
    iget v5, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1690
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v8}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    goto :goto_8

    .line 1693
    :cond_17
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_18

    .line 1694
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

    .line 1698
    .end local v0    # "mode":I
    .end local v12    # "ignoreForeground":Z
    :cond_18
    :goto_8
    if-eqz v11, :cond_19

    .line 1701
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 1702
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_19

    .line 1703
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    iget-wide v12, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v7, v5, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1707
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_19
    if-eqz v9, :cond_1a

    .line 1710
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1711
    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v13

    const/16 v14, 0x4c

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    .line 1710
    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1716
    .end local v9    # "alreadyStartedOp":Z
    .end local v11    # "stopProcStatsOp":Z
    :cond_1a
    goto/16 :goto_b

    .line 1698
    .restart local v9    # "alreadyStartedOp":Z
    .restart local v11    # "stopProcStatsOp":Z
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_1b

    .line 1701
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v5

    .line 1702
    .local v5, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v5, :cond_1b

    .line 1703
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    iget-wide v12, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v5, v7, v6, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1707
    .end local v5    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1b
    if-eqz v9, :cond_1c

    .line 1710
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1711
    invoke-static {v5}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v13

    const/16 v14, 0x4c

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    .line 1710
    move-object/from16 v16, v5

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1715
    :cond_1c
    throw v0

    .line 1569
    .end local v11    # "stopProcStatsOp":Z
    .local v9, "manifestType":I
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "foregroundServiceType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v8, [Ljava/lang/Object;

    .line 1570
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

    .line 1572
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

    .line 1529
    .end local v9    # "manifestType":I
    .end local v10    # "foregroundServiceType":I
    .local p5, "foregroundServiceType":I
    :cond_1e
    move/from16 v11, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "null notification"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1717
    :cond_1f
    move/from16 v11, p5

    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_24

    .line 1718
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1719
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_20

    .line 1720
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 1722
    :cond_20
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1723
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v9

    .line 1724
    .local v9, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v9, :cond_21

    .line 1725
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    iget-wide v12, v2, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v9, v7, v10, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 1728
    :cond_21
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v12, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 1729
    invoke-static {v12}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v18

    const/16 v19, 0x4c

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v22, 0x0

    .line 1728
    move-object/from16 v17, v10

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 1731
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1732
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-boolean v13, v2, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    const/16 v14, 0x3c

    const/4 v15, 0x2

    invoke-static {v14, v10, v12, v15, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZ)V

    .line 1736
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v13, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v10, v12, v13, v7}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 1737
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_24

    .line 1741
    sget-boolean v10, Lcom/android/server/am/ActiveServices;->isSupport:Z

    if-ne v10, v8, :cond_23

    .line 1742
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1743
    .local v10, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v12

    sub-int/2addr v12, v8

    .local v12, "i":I
    :goto_9
    if-ltz v12, :cond_23

    .line 1744
    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ServiceRecord;

    .line 1745
    .local v13, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v14, v13, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v14, :cond_22

    iget v14, v13, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v15, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v14, v15, :cond_22

    .line 1746
    iput-boolean v7, v13, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1747
    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v13, v15, v7

    iget v14, v13, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1749
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v8

    .line 1747
    const-string v14, "%s(foregroundId=%d) not foreground anymore"

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    .end local v13    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_22
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 1755
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "i":I
    :cond_23
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v10, v7, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1756
    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v6, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1759
    .end local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v9    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25

    .line 1760
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1761
    iput v7, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1762
    iput-object v5, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_a

    .line 1763
    :cond_25
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x15

    if-lt v0, v6, :cond_26

    .line 1764
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V

    .line 1765
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_26

    .line 1766
    iput v7, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1767
    iput-object v5, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1771
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

    .line 485
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 486
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "attentionServicePackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mWhiteListAllowWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 491
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "systemCaptionsServicePackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mWhiteListAllowWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 495
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

    .line 5466
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5467
    return v1

    .line 5470
    :cond_0
    if-eqz p6, :cond_1

    .line 5471
    return v1

    .line 5474
    :cond_1
    const/4 v0, 0x0

    .line 5475
    .local v0, "isCallerSystem":Z
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 5476
    .local v2, "callingAppId":I
    if-eqz v2, :cond_2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    const/16 v3, 0x403

    if-eq v2, v3, :cond_2

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_2

    .line 5484
    const/4 v0, 0x0

    goto :goto_0

    .line 5481
    :cond_2
    const/4 v0, 0x1

    .line 5482
    nop

    .line 5488
    :goto_0
    if-eqz v0, :cond_3

    .line 5489
    return v1

    .line 5492
    :cond_3
    iget-object v3, p5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_4

    .line 5493
    iget-object v3, p5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v3

    .line 5494
    .local v3, "instr":Lcom/android/server/am/ActiveInstrumentation;
    if-eqz v3, :cond_4

    iget-boolean v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz v4, :cond_4

    .line 5495
    return v1

    .line 5499
    .end local v3    # "instr":Lcom/android/server/am/ActiveInstrumentation;
    :cond_4
    iget-object v3, p5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 5500
    iget-object v3, p5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v4

    .line 5501
    .local v3, "hasAllowBackgroundActivityStartsToken":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 5502
    return v1

    .line 5505
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {v5, v6, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_7

    .line 5507
    return v1

    .line 5511
    :cond_7
    invoke-direct {p0, p3}, Lcom/android/server/am/ActiveServices;->appIsTopLocked(I)Z

    move-result v5

    .line 5512
    .local v5, "isCallingUidTopApp":Z
    if-eqz v5, :cond_8

    .line 5513
    return v1

    .line 5516
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v6

    .line 5517
    .local v6, "isCallingUidVisible":Z
    if-eqz v6, :cond_9

    .line 5518
    return v1

    .line 5521
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mWhiteListAllowWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 5522
    invoke-virtual {v7, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 5523
    .local v7, "isWhiteListedPackage":Z
    if-eqz v7, :cond_a

    .line 5524
    return v1

    .line 5528
    :cond_a
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v8, p3}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result v8

    .line 5529
    .local v8, "isDeviceOwner":Z
    if-eqz v8, :cond_b

    .line 5530
    return v1

    .line 5532
    :cond_b
    return v4
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .line 952
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_1

    .line 956
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

    .line 957
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 958
    return-void

    .line 960
    :cond_1
    const/16 v0, 0x63

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 961
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 960
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 963
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    .line 964
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 965
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 967
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_2

    .line 968
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    .line 969
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 968
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 971
    :cond_2
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 973
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 974
    return-void

    .line 965
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

    .line 1789
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1790
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    .line 1791
    .local v1, "callback":Lcom/android/server/am/ActiveServices$AppOpCallback;
    if-eqz v1, :cond_0

    .line 1792
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->unregisterLocked()V

    .line 1793
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1794
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1797
    :cond_0
    return-void
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I
    .param p3, "force"    # Z

    .line 3301
    if-nez p3, :cond_0

    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3302
    const/4 v0, 0x0

    return v0

    .line 3307
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 3308
    .local v0, "removed":Z
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v1, :cond_2

    .line 3309
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 3311
    :cond_2
    if-eqz v0, :cond_3

    .line 3312
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3314
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3315
    const/4 v1, 0x1

    return v1
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .locals 11
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "modCr"    # Lcom/android/server/am/ConnectionRecord;
    .param p3, "updateLru"    # Z

    .line 2024
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 2025
    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2028
    return v0

    .line 2032
    :cond_0
    const/4 v1, 0x0

    .line 2033
    .local v1, "anyClientActivities":Z
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    if-nez v1, :cond_5

    .line 2034
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 2035
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v5

    .line 2036
    .local v5, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "conni":I
    :goto_1
    if-ltz v6, :cond_4

    if-nez v1, :cond_4

    .line 2037
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2038
    .local v7, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "cri":I
    :goto_2
    if-ltz v8, :cond_3

    .line 2039
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    .line 2040
    .local v9, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v10, p1, :cond_1

    .line 2042
    goto :goto_3

    .line 2044
    :cond_1
    iget-object v10, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2045
    const/4 v1, 0x1

    .line 2046
    goto :goto_4

    .line 2038
    .end local v9    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 2036
    .end local v7    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v8    # "cri":I
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2033
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v6    # "conni":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2051
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v2

    if-eq v1, v2, :cond_7

    .line 2052
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setHasClientActivities(Z)V

    .line 2053
    if-eqz p3, :cond_6

    .line 2054
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2056
    :cond_6
    return v3

    .line 2058
    :cond_7
    return v0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z

    .line 1982
    const/4 v0, 0x0

    .line 1983
    .local v0, "anyForeground":Z
    const/4 v1, 0x0

    .line 1984
    .local v1, "fgServiceTypes":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1985
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 1986
    .local v3, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v4, :cond_1

    .line 1987
    :cond_0
    const/4 v0, 0x1

    .line 1988
    iget v4, v3, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    or-int/2addr v1, v4

    .line 1984
    .end local v3    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1991
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZIZ)V

    .line 1992
    return-void
.end method

.method private updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1995
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1996
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1997
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 1998
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v3, :cond_0

    .line 1999
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 2000
    goto :goto_1

    .line 1996
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2003
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

    .line 4266
    const/4 v0, 0x0

    .line 4268
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4269
    const/4 v1, 0x0

    .line 4271
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4272
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    move-object v1, v3

    .line 4273
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v3, :cond_0

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4274
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4275
    goto :goto_1

    .line 4278
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4279
    add-int/lit8 v2, v2, -0x1

    .line 4280
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 4282
    iget-boolean v3, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-direct {p0, v1, p1, v3}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 4283
    const/4 v0, 0x1

    .line 4284
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4289
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4271
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4296
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 4292
    :catch_0
    move-exception v2

    .line 4293
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

    .line 4295
    throw v2

    .line 4302
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 4304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 4305
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 4306
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v3, :cond_4

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_5

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4307
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4308
    goto :goto_4

    .line 4310
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4311
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 4304
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4314
    .end local v1    # "i":I
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_6
    return v0
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 42
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

    .line 2065
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

    .line 2066
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2065
    invoke-static {v8, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    .line 2068
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2069
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 2070
    .local v16, "callingUid":I
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 2071
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    const-string v1, " (pid="

    if-eqz v5, :cond_35

    .line 2078
    const/4 v2, 0x0

    .line 2079
    .local v2, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    if-eqz v15, :cond_2

    .line 2080
    iget-object v3, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-result-object v2

    .line 2081
    if-nez v2, :cond_1

    .line 2082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding with unknown activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    return v4

    .line 2081
    :cond_1
    move-object v3, v2

    goto :goto_1

    .line 2079
    :cond_2
    move-object v3, v2

    .line 2087
    .end local v2    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v3, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_1
    const/4 v2, 0x0

    .line 2088
    .local v2, "clientLabel":I
    const/4 v11, 0x0

    .line 2089
    .local v11, "clientIntent":Landroid/app/PendingIntent;
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    const/4 v9, 0x1

    if-ne v12, v4, :cond_3

    move v4, v9

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    move/from16 v18, v4

    .line 2091
    .local v18, "isCallerSystem":Z
    if-eqz v18, :cond_6

    .line 2095
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setDefusable(Z)V

    .line 2096
    const-string v4, "android.intent.extra.client_intent"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/app/PendingIntent;

    .line 2097
    if-eqz v11, :cond_5

    .line 2098
    const-string v4, "android.intent.extra.client_label"

    const/4 v12, 0x0

    invoke-virtual {v0, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2099
    if-eqz v2, :cond_4

    .line 2103
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    move-object v4, v0

    move/from16 v17, v2

    move-object/from16 v19, v11

    .end local p3    # "service":Landroid/content/Intent;
    .local v0, "service":Landroid/content/Intent;
    goto :goto_3

    .line 2099
    .end local v0    # "service":Landroid/content/Intent;
    .restart local p3    # "service":Landroid/content/Intent;
    :cond_4
    move-object v4, v0

    move/from16 v17, v2

    move-object/from16 v19, v11

    goto :goto_3

    .line 2097
    :cond_5
    const/4 v12, 0x0

    move-object v4, v0

    move/from16 v17, v2

    move-object/from16 v19, v11

    goto :goto_3

    .line 2091
    :cond_6
    const/4 v12, 0x0

    move-object v4, v0

    move/from16 v17, v2

    move-object/from16 v19, v11

    .line 2108
    .end local v2    # "clientLabel":I
    .end local v11    # "clientIntent":Landroid/app/PendingIntent;
    .end local p3    # "service":Landroid/content/Intent;
    .local v4, "service":Landroid/content/Intent;
    .local v17, "clientLabel":I
    .local v19, "clientIntent":Landroid/app/PendingIntent;
    :goto_3
    const/high16 v20, 0x8000000

    and-int v0, p6, v20

    if-eqz v0, :cond_7

    .line 2109
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v11, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v0, v2, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    :cond_7
    const/high16 v0, 0x80000

    and-int v0, p6, v0

    if-eqz v0, :cond_9

    if-eqz v18, :cond_8

    goto :goto_4

    .line 2114
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_SCHEDULE_LIKE_TOP_APP when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2118
    :cond_9
    :goto_4
    const/high16 v21, 0x1000000

    and-int v0, p6, v21

    const-string v2, "Non-system caller "

    if-eqz v0, :cond_b

    if-eqz v18, :cond_a

    goto :goto_5

    .line 2119
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2124
    :cond_b
    :goto_5
    const/high16 v0, 0x400000

    and-int v11, p6, v0

    if-eqz v11, :cond_d

    if-eqz v18, :cond_c

    goto :goto_6

    .line 2125
    :cond_c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") set BIND_ALLOW_INSTANT when binding service "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2130
    :cond_d
    :goto_6
    const/high16 v22, 0x100000

    and-int v1, p6, v22

    if-eqz v1, :cond_e

    .line 2131
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const-string v11, "BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS"

    invoke-virtual {v1, v2, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    :cond_e
    iget v1, v5, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v1, :cond_f

    move v1, v9

    goto :goto_7

    :cond_f
    move v1, v12

    :goto_7
    move v2, v1

    .line 2137
    .local v2, "callerFg":Z
    const/high16 v1, -0x80000000

    and-int v1, p6, v1

    if-eqz v1, :cond_10

    move v11, v9

    goto :goto_8

    :cond_10
    move v11, v12

    .line 2138
    .local v11, "isBindExternal":Z
    :goto_8
    and-int v0, p6, v0

    if-eqz v0, :cond_11

    move v0, v9

    goto :goto_9

    :cond_11
    move v0, v12

    :goto_9
    move/from16 v23, v12

    move v12, v0

    .line 2140
    .local v12, "allowInstant":Z
    const/4 v0, 0x1

    .line 2141
    move-object/from16 v1, p0

    move/from16 p3, v2

    .end local v2    # "callerFg":Z
    .local p3, "callerFg":Z
    move-object v2, v4

    move-object/from16 v24, v3

    .end local v3    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v24, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v3, p7

    move-object/from16 v26, v4

    .end local v4    # "service":Landroid/content/Intent;
    .local v26, "service":Landroid/content/Intent;
    move-object/from16 v4, p4

    move-object/from16 v23, v5

    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v23, "callerApp":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v5, p8

    move/from16 v27, v6

    .end local v6    # "callingPid":I
    .local v27, "callingPid":I
    move/from16 v7, v16

    move-object v15, v8

    move/from16 v8, p9

    move/from16 v14, p9

    move v9, v0

    move-object v14, v10

    move/from16 v10, p3

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v10

    .line 2144
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v10, :cond_12

    .line 2145
    const/4 v9, 0x0

    return v9

    .line 2147
    :cond_12
    const/4 v9, 0x0

    iget-object v0, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    const/4 v8, -0x1

    if-nez v0, :cond_13

    .line 2148
    return v8

    .line 2150
    :cond_13
    iget-object v7, v10, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 2154
    .local v7, "s":Lcom/android/server/am/ServiceRecord;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessRecord;->getUid()I

    move-result v0

    move-object/from16 v6, v26

    .end local v26    # "service":Landroid/content/Intent;
    .local v6, "service":Landroid/content/Intent;
    invoke-static {v14, v0, v6, v7}, Lcom/android/server/am/OpStartAppControlInjector;->canServiceGo(Ljava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2155
    return v9

    .line 2161
    :cond_14
    move-object/from16 v5, v23

    .end local v23    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-static {v5, v6, v7, v14}, Lcom/android/server/am/OpBGFrozenInjector;->bindServiceLockedEvent(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    .line 2164
    const/4 v0, 0x0

    .line 2170
    .local v0, "permissionsReviewRequired":Z
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2173
    const/4 v0, 0x1

    .line 2176
    const-string/jumbo v2, "u"

    move/from16 v1, p3

    .end local p3    # "callerFg":Z
    .local v1, "callerFg":Z
    if-nez v1, :cond_15

    .line 2177
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

    .line 2179
    return v9

    .line 2182
    :cond_15
    move-object v3, v7

    .line 2183
    .local v3, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    move-object v4, v6

    .line 2185
    .local v4, "serviceIntent":Landroid/content/Intent;
    new-instance v8, Landroid/os/RemoteCallback;

    new-instance v9, Lcom/android/server/am/ActiveServices$3;

    move/from16 v23, v1

    .end local v1    # "callerFg":Z
    .local v23, "callerFg":Z
    move-object v1, v9

    move/from16 v26, v0

    move-object v0, v2

    .end local v0    # "permissionsReviewRequired":Z
    .local v26, "permissionsReviewRequired":Z
    move-object/from16 v2, p0

    move-object/from16 v29, v10

    move-object v10, v5

    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v29, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    move/from16 v5, v23

    move/from16 v30, v11

    move-object v11, v6

    .end local v6    # "service":Landroid/content/Intent;
    .local v11, "service":Landroid/content/Intent;
    .local v30, "isBindExternal":Z
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    invoke-direct {v8, v9}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v1, v8

    .line 2220
    .local v1, "callback":Landroid/os/RemoteCallback;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2221
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x18800000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2224
    iget-object v5, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2225
    const-string v5, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2227
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v5, :cond_16

    .line 2228
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

    .line 2232
    :cond_16
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ActiveServices$4;

    move/from16 v9, p9

    invoke-direct {v5, v13, v2, v9}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 2170
    .end local v1    # "callback":Landroid/os/RemoteCallback;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    .end local v23    # "callerFg":Z
    .end local v26    # "permissionsReviewRequired":Z
    .end local v29    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v30    # "isBindExternal":Z
    .restart local v0    # "permissionsReviewRequired":Z
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "service":Landroid/content/Intent;
    .local v10, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v11, "isBindExternal":Z
    .restart local p3    # "callerFg":Z
    :cond_17
    move/from16 v23, p3

    move/from16 v9, p9

    move-object/from16 v29, v10

    move/from16 v30, v11

    move-object v10, v5

    move-object v11, v6

    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "service":Landroid/content/Intent;
    .end local p3    # "callerFg":Z
    .local v10, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v11, "service":Landroid/content/Intent;
    .restart local v23    # "callerFg":Z
    .restart local v29    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v30    # "isBindExternal":Z
    move/from16 v26, v0

    .line 2240
    .end local v0    # "permissionsReviewRequired":Z
    .restart local v26    # "permissionsReviewRequired":Z
    :goto_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v31

    .line 2243
    .local v31, "origId":J
    :try_start_0
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, 0x0

    invoke-direct {v13, v7, v0, v8}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v0, :cond_18

    .line 2244
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

    .line 2419
    :catchall_0
    move-exception v0

    move v3, v9

    move-object/from16 v25, v11

    move/from16 v35, v12

    move-object v2, v14

    move/from16 v1, v23

    move-object/from16 v28, v24

    move-object v12, v7

    goto/16 :goto_16

    .line 2248
    :cond_18
    :goto_b
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_1b

    .line 2249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 2250
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2252
    invoke-virtual {v7}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 2253
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_19

    .line 2254
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v7, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    goto :goto_c

    .line 2253
    :cond_19
    const/4 v6, 0x1

    goto :goto_c

    .line 2250
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1a
    const/4 v6, 0x1

    goto :goto_c

    .line 2248
    :cond_1b
    const/4 v6, 0x1

    .line 2260
    :goto_c
    const/high16 v0, 0x200000

    and-int v0, p6, v0

    if-eqz v0, :cond_1c

    .line 2261
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->requireAllowedAssociationsLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2264
    :cond_1c
    :try_start_2
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2265
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v36

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, v7, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 2264
    move-object/from16 v33, v0

    move/from16 v34, v1

    move-object/from16 v35, v2

    move/from16 v37, v3

    move-wide/from16 v38, v4

    move-object/from16 v40, v6

    move-object/from16 v41, v8

    invoke-virtual/range {v33 .. v41}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 2269
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2270
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 2269
    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    .line 2272
    invoke-virtual {v7, v11, v10}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v0

    move-object v8, v0

    .line 2273
    .local v8, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v33, Lcom/android/server/am/ConnectionRecord;

    iget v6, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object/from16 v0, v33

    move-object v1, v8

    move-object/from16 v2, v24

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v34, v5

    move/from16 v5, v17

    move/from16 v28, v6

    move/from16 v35, v12

    const/4 v12, 0x1

    .end local v12    # "allowInstant":Z
    .local v35, "allowInstant":Z
    move-object/from16 v6, v19

    move-object v12, v7

    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .local v12, "s":Lcom/android/server/am/ServiceRecord;
    move/from16 v7, v28

    move-object v14, v8

    move-object/from16 v25, v11

    const/4 v11, -0x1

    const/16 v28, 0x0

    .end local v8    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v11    # "service":Landroid/content/Intent;
    .local v14, "b":Lcom/android/server/am/AppBindRecord;
    .local v25, "service":Landroid/content/Intent;
    move-object/from16 v8, v34

    move-object/from16 v9, p8

    :try_start_3
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v33

    .line 2277
    .local v8, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v9, v0

    .line 2278
    .local v9, "binder":Landroid/os/IBinder;
    invoke-virtual {v12, v9, v8}, Lcom/android/server/am/ServiceRecord;->addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V

    .line 2279
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 2280
    move-object/from16 v7, v24

    .end local v24    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v7, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v7, :cond_1d

    .line 2281
    :try_start_4
    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->addConnection(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_d

    .line 2419
    .end local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "binder":Landroid/os/IBinder;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v28, v7

    move/from16 v1, v23

    goto/16 :goto_16

    .line 2283
    .restart local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v9    # "binder":Landroid/os/IBinder;
    .restart local v14    # "b":Lcom/android/server/am/AppBindRecord;
    :cond_1d
    :goto_d
    :try_start_5
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2284
    invoke-virtual {v8}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    .line 2288
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v0, :cond_1e

    .line 2289
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

    .line 2294
    :cond_1e
    :try_start_7
    iget v0, v8, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1f

    .line 2295
    :try_start_8
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2297
    :cond_1f
    :try_start_9
    iget v0, v8, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    and-int v0, v0, v21

    if-eqz v0, :cond_20

    .line 2298
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, v12, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    .line 2300
    :cond_20
    and-int v0, p6, v22

    if-eqz v0, :cond_21

    .line 2301
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/android/server/am/ServiceRecord;->setHasBindingWhitelistingBgActivityStarts(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2303
    :cond_21
    :try_start_b
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v0, :cond_22

    .line 2304
    :try_start_c
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    invoke-direct {v13, v0, v8, v1}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2306
    :cond_22
    :try_start_d
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 2307
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v0, :cond_23

    .line 2308
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 2309
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object v6, v0

    goto :goto_e

    .line 2307
    :cond_23
    move-object v6, v0

    .line 2311
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_e
    :try_start_f
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    move-object v5, v0

    .line 2314
    .local v5, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 2315
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 2316
    iget-wide v0, v12, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v0, v0

    iput-wide v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 2317
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v0, :cond_24

    .line 2318
    :try_start_10
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2319
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iput-boolean v0, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const/4 v11, 0x0

    goto :goto_f

    .line 2321
    :cond_24
    :try_start_11
    iput v11, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2322
    const/4 v11, 0x0

    iput-boolean v11, v5, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    .line 2325
    :goto_f
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    move-object v4, v0

    .line 2326
    .local v4, "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v0, v4, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->processName:Ljava/lang/String;

    .line 2327
    iget v0, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, v4, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->pid:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 2329
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2330
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v0, v5, v4}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->bindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 2335
    :cond_25
    goto :goto_10

    .line 2332
    :catch_0
    move-exception v0

    .line 2333
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_13
    const-string v1, "Failed to send bind details to servicetracker HAL"

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2334
    const/4 v1, 0x0

    iput-object v1, v13, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 2337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_26

    .line 2338
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 2339
    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v21, v4

    .end local v4    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .local v21, "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    move/from16 v4, v23

    move-object/from16 v22, v5

    .end local v5    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .local v22, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    move v5, v0

    move-object/from16 v24, v6

    .end local v6    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v24, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v0, :cond_27

    .line 2341
    nop

    .line 2419
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2341
    return v11

    .line 2337
    .end local v21    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v22    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v4    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .restart local v5    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v6    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_26
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    .line 2345
    .end local v4    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v5    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v6    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v21    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .restart local v22    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_27
    :try_start_15
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-nez v0, :cond_28

    .line 2346
    const/4 v0, 0x0

    .line 2347
    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move/from16 v3, v27

    move/from16 v4, v16

    move-object/from16 v5, v25

    move-object v6, v12

    move-object/from16 v28, v7

    .end local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .local v28, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    move v7, v0

    :try_start_16
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->shouldAllowWhileInUsePermissionInFgsLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v0

    iput-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_11

    .line 2419
    .end local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "binder":Landroid/os/IBinder;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v21    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v22    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move/from16 v1, v23

    goto/16 :goto_16

    .line 2345
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v9    # "binder":Landroid/os/IBinder;
    .restart local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v21    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .restart local v22    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_28
    move-object/from16 v28, v7

    .line 2352
    .end local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_11
    :try_start_17
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-eqz v0, :cond_2e

    .line 2353
    and-int v0, p6, v20

    if-eqz v0, :cond_29

    .line 2354
    :try_start_18
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 2356
    :cond_29
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_2a

    .line 2357
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 2360
    :cond_2a
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2361
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2362
    :cond_2b
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_2d

    and-int v2, p6, v20

    if-eqz v2, :cond_2d

    :cond_2c
    const/4 v4, 0x1

    goto :goto_12

    :cond_2d
    move v4, v11

    :goto_12
    iget-object v2, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 2360
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2365
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v2, "updateOomAdj_bindService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 2368
    :cond_2e
    :try_start_19
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v0, :cond_2f

    :try_start_1a
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

    .line 2370
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

    .line 2368
    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 2373
    :cond_2f
    :try_start_1b
    iget-object v0, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v0, :cond_33

    :try_start_1c
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    if-eqz v0, :cond_33

    .line 2380
    :try_start_1d
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_30

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_30

    .line 2381
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

    .line 2387
    :cond_30
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    const/16 v1, 0x251c

    if-eqz v0, :cond_31

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_31

    .line 2388
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1, v0, v2}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 2393
    :cond_31
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v3, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v3, v3, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3, v11}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    .line 2396
    invoke-static {v1}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 2402
    goto :goto_13

    .line 2398
    :catch_1
    move-exception v0

    .line 2399
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure sending service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 2400
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

    .line 2399
    invoke-static {v15, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2407
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

    .line 2408
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    move/from16 v1, v23

    const/4 v2, 0x1

    .end local v23    # "callerFg":Z
    .local v1, "callerFg":Z
    :try_start_1f
    invoke-direct {v13, v12, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    goto :goto_14

    .line 2407
    .end local v1    # "callerFg":Z
    .restart local v23    # "callerFg":Z
    :cond_32
    move/from16 v1, v23

    .end local v23    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    goto :goto_14

    .line 2419
    .end local v1    # "callerFg":Z
    .end local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "binder":Landroid/os/IBinder;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v21    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v22    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v23    # "callerFg":Z
    :catchall_3
    move-exception v0

    move/from16 v1, v23

    move-object/from16 v2, p8

    move/from16 v3, p9

    goto :goto_15

    .line 2373
    .restart local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v9    # "binder":Landroid/os/IBinder;
    .restart local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v21    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .restart local v22    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .restart local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_33
    move/from16 v1, v23

    .line 2410
    .end local v23    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v0, :cond_34

    .line 2411
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    invoke-direct {v13, v12, v0, v1, v11}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 2414
    :cond_34
    :goto_14
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object v4, v14

    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .local v4, "b":Lcom/android/server/am/AppBindRecord;
    :try_start_20
    invoke-direct {v13, v3, v2, v0}, Lcom/android/server/am/ActiveServices;->maybeLogBindCrossProfileService(ILjava/lang/String;I)V

    .line 2416
    iget v0, v12, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v13, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 2419
    .end local v4    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v8    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "binder":Landroid/os/IBinder;
    .end local v21    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v22    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2420
    nop

    .line 2422
    const/4 v4, 0x1

    return v4

    .line 2419
    :catchall_4
    move-exception v0

    goto :goto_16

    :catchall_5
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    goto :goto_16

    .end local v1    # "callerFg":Z
    .restart local v23    # "callerFg":Z
    :catchall_6
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move/from16 v1, v23

    .end local v23    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    :goto_15
    goto :goto_16

    .end local v1    # "callerFg":Z
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v23    # "callerFg":Z
    :catchall_7
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v28, v7

    move/from16 v1, v23

    .end local v7    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v23    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    .restart local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto :goto_16

    .end local v1    # "callerFg":Z
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v23    # "callerFg":Z
    .local v24, "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_8
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v3, p9

    move/from16 v1, v23

    move-object/from16 v28, v24

    .end local v23    # "callerFg":Z
    .end local v24    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1    # "callerFg":Z
    .restart local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    goto :goto_16

    .end local v1    # "callerFg":Z
    .end local v25    # "service":Landroid/content/Intent;
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v35    # "allowInstant":Z
    .local v7, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v11    # "service":Landroid/content/Intent;
    .local v12, "allowInstant":Z
    .restart local v23    # "callerFg":Z
    .restart local v24    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    :catchall_9
    move-exception v0

    move v3, v9

    move-object/from16 v25, v11

    move/from16 v35, v12

    move-object v2, v14

    move/from16 v1, v23

    move-object/from16 v28, v24

    move-object v12, v7

    .end local v7    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v11    # "service":Landroid/content/Intent;
    .end local v23    # "callerFg":Z
    .end local v24    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v1    # "callerFg":Z
    .local v12, "s":Lcom/android/server/am/ServiceRecord;
    .restart local v25    # "service":Landroid/content/Intent;
    .restart local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v35    # "allowInstant":Z
    :goto_16
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2420
    throw v0

    .line 2072
    .end local v1    # "callerFg":Z
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v17    # "clientLabel":I
    .end local v18    # "isCallerSystem":Z
    .end local v19    # "clientIntent":Landroid/app/PendingIntent;
    .end local v25    # "service":Landroid/content/Intent;
    .end local v26    # "permissionsReviewRequired":Z
    .end local v27    # "callingPid":I
    .end local v28    # "activity":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v29    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v30    # "isBindExternal":Z
    .end local v31    # "origId":J
    .end local v35    # "allowInstant":Z
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v6, "callingPid":I
    .local p3, "service":Landroid/content/Intent;
    :cond_35
    move/from16 v27, v6

    move-object v2, v10

    move-object v10, v5

    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .restart local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v27    # "callingPid":I
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v27

    .end local v27    # "callingPid":I
    .local v1, "callingPid":I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") when binding service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

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

    .line 4368
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 4370
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4371
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4374
    :cond_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p3, v2, :cond_4

    .line 4375
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 4376
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 4377
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v9, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4376
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 4378
    if-nez p5, :cond_1

    if-eqz v0, :cond_1

    .line 4379
    return v1

    .line 4381
    :cond_1
    if-eqz p5, :cond_2

    if-nez p2, :cond_2

    .line 4382
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v3, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 4375
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_3
    goto :goto_1

    .line 4386
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4387
    .local v2, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v2, :cond_5

    .line 4388
    iget-object v9, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4389
    .local v9, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p5

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v0

    .line 4392
    .end local v9    # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :cond_5
    if-eqz p5, :cond_6

    if-nez p2, :cond_6

    .line 4393
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 4397
    .end local v2    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 4398
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_7

    .line 4399
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4398
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4401
    .end local v2    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4404
    :cond_8
    return v0
.end method

.method cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 15
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    .line 4424
    move-object v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 4425
    .local v2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v3

    .line 4426
    .local v3, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4427
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4428
    .local v5, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4429
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4426
    .end local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4434
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    move v5, v0

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_4

    .line 4435
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/am/ServiceRecord;

    .line 4436
    .local v13, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v13, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_3

    .line 4437
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    .line 4438
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

    .line 4439
    invoke-direct {p0, v13}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_2

    .line 4441
    :cond_2
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v8, 0x1

    .line 4442
    invoke-virtual {v13}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-object v7, v13

    move-object/from16 v10, p3

    invoke-direct/range {v6 .. v12}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    .line 4441
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4443
    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    iget-object v0, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_3

    .line 4447
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v13, v4, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4450
    goto :goto_2

    .line 4448
    :catch_0
    move-exception v0

    .line 4434
    .end local v13    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4455
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method protected dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 5334
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5335
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 5336
    .local v4, "outterToken":J
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 5337
    .local v0, "users":[I
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget v8, v0, v7

    .line 5338
    .local v8, "user":I
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 5339
    .local v9, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v9, :cond_0

    .line 5340
    move-object v15, v0

    goto :goto_2

    .line 5342
    :cond_0
    const-wide v10, 0x20b00000001L

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 5343
    .local v10, "token":J
    const-wide v12, 0x10500000001L

    invoke-virtual {v2, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5344
    iget-object v12, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 5345
    .local v12, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_1

    .line 5346
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    move-object v15, v0

    .end local v0    # "users":[I
    .local v15, "users":[I
    const-wide v0, 0x20b00000002L

    invoke-virtual {v14, v2, v0, v1}, Lcom/android/server/am/ServiceRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5345
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object v0, v15

    goto :goto_1

    .end local v15    # "users":[I
    .restart local v0    # "users":[I
    :cond_1
    move-object v15, v0

    .line 5349
    .end local v0    # "users":[I
    .end local v13    # "i":I
    .restart local v15    # "users":[I
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5337
    .end local v8    # "user":I
    .end local v9    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v10    # "token":J
    .end local v12    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object v0, v15

    goto :goto_0

    .line 5351
    .end local v15    # "users":[I
    .restart local v0    # "users":[I
    :cond_2
    move-object v15, v0

    .end local v0    # "users":[I
    .restart local v15    # "users":[I
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5352
    .end local v4    # "outterToken":J
    .end local v15    # "users":[I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5353
    return-void

    .line 5352
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

    .line 5365
    move-object v8, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 5367
    .local v9, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v10

    .line 5369
    .local v10, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/ServiceRecord;>;"
    iget-object v1, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5370
    iget-object v0, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 5372
    .local v0, "users":[I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v0, v4

    .line 5373
    .local v5, "user":I
    iget-object v6, v8, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 5374
    .local v6, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v6, :cond_0

    .line 5375
    goto :goto_2

    .line 5377
    :cond_0
    iget-object v7, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 5378
    .local v7, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 5379
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 5381
    .local v12, "r1":Lcom/android/server/am/ServiceRecord;
    invoke-interface {v10, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 5382
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5378
    .end local v12    # "r1":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 5372
    .end local v5    # "user":I
    .end local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5386
    .end local v0    # "users":[I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5388
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 5389
    return v3

    .line 5393
    :cond_4
    sget-object v0, Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;->INSTANCE:Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5395
    const/4 v0, 0x0

    .line 5396
    .local v0, "needSep":Z
    const/4 v1, 0x0

    move v11, v1

    .restart local v11    # "i":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 5397
    if-eqz v0, :cond_5

    .line 5398
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5400
    :cond_5
    const/4 v0, 0x1

    .line 5401
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

    .line 5396
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 5403
    .end local v11    # "i":I
    :cond_6
    const/4 v1, 0x1

    return v1

    .line 5386
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

    .line 4408
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4409
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4410
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4411
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 4412
    .local v3, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4413
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 4414
    iput-boolean v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 4410
    .end local v3    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4417
    .end local v1    # "i":I
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-eqz v1, :cond_2

    .line 4418
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 4421
    :cond_2
    return-void
.end method

.method foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z
    .locals 10
    .param p1, "aa"    # Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    .param p2, "nowElapsed"    # J

    .line 1223
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

    .line 1225
    :cond_0
    const/4 v0, 0x0

    .line 1226
    .local v0, "canRemove":Z
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1227
    iget-boolean v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    if-eqz v2, :cond_1

    .line 1230
    const/4 v0, 0x1

    .line 1231
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_b

    const-string v2, "YES - shown while on top"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1232
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    const-string v3, "NO -- wait "

    if-nez v2, :cond_5

    iget-boolean v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1250
    :cond_2
    iget-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    add-long/2addr v4, v6

    .line 1252
    .local v4, "minTime":J
    cmp-long v2, p2, v4

    if-ltz v2, :cond_4

    .line 1257
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_3

    const-string v2, "YES - gone long enough with screen off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1261
    :cond_4
    iput-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1262
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

    .line 1233
    .end local v4    # "minTime":J
    :cond_5
    :goto_0
    iget-wide v4, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    .line 1234
    iget-wide v6, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    iget-wide v8, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    cmp-long v2, v6, v8

    if-eqz v2, :cond_6

    .line 1235
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    goto :goto_1

    .line 1236
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    :goto_1
    add-long/2addr v4, v6

    .line 1237
    .restart local v4    # "minTime":J
    cmp-long v2, p2, v4

    if-ltz v2, :cond_8

    .line 1240
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_7

    const-string v2, "YES - shown long enough with screen on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_7
    const/4 v0, 0x1

    goto :goto_3

    .line 1244
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    add-long/2addr v6, p2

    .line 1245
    .local v6, "reportTime":J
    cmp-long v2, v6, v4

    if-lez v2, :cond_9

    move-wide v8, v6

    goto :goto_2

    :cond_9
    move-wide v8, v4

    :goto_2
    iput-wide v8, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1246
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

    .line 1249
    .end local v4    # "minTime":J
    .end local v6    # "reportTime":J
    :cond_a
    :goto_3
    nop

    .line 1266
    :cond_b
    :goto_4
    return v0
.end method

.method foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V
    .locals 7
    .param p1, "uidRec"    # Lcom/android/server/am/UidRecord;

    .line 1494
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1495
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_4

    .line 1496
    const/4 v1, 0x0

    .line 1497
    .local v1, "changed":Z
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1498
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1499
    .local v4, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget v6, p1, Lcom/android/server/am/UidRecord;->uid:I

    if-ne v5, v6, :cond_2

    .line 1500
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_1

    .line 1501
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v5, :cond_0

    .line 1502
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1503
    const/4 v1, 0x1

    .line 1505
    :cond_0
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    goto :goto_1

    .line 1506
    :cond_1
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-eqz v5, :cond_2

    .line 1507
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1508
    const/4 v1, 0x1

    .line 1497
    .end local v4    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1512
    .end local v2    # "j":I
    :cond_3
    if-eqz v1, :cond_4

    .line 1513
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1516
    .end local v1    # "changed":Z
    :cond_4
    return-void
.end method

.method public getForegroundServiceTypeLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1208
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1209
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1210
    .local v1, "origId":J
    const/4 v3, 0x0

    .line 1212
    .local v3, "ret":I
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 1213
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v4, :cond_0

    .line 1214
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    .line 1217
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    nop

    .line 1219
    return v3

    .line 1217
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    throw v4
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 4765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4766
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 4767
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v1, :cond_2

    .line 4768
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    .line 4769
    .local v2, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "conni":I
    :goto_0
    if-ltz v3, :cond_2

    .line 4770
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4771
    .local v4, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 4772
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_0

    .line 4773
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    return-object v6

    .line 4771
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4769
    .end local v4    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4778
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

    .line 4713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4716
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4718
    .local v1, "ident":J
    if-eqz p5, :cond_3

    .line 4719
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v3

    .line 4720
    .local v3, "users":[I
    const/4 v4, 0x0

    .local v4, "ui":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_1

    .line 4721
    aget v5, v3, v4

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 4722
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

    .line 4723
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 4724
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4722
    nop

    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4720
    .end local v5    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v6    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4728
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

    .line 4729
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4730
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    nop

    .line 4731
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v6

    .line 4732
    .local v6, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v7, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v7, v6, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 4733
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4728
    nop

    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4735
    .end local v3    # "users":[I
    .end local v4    # "i":I
    :cond_2
    goto :goto_5

    .line 4736
    :cond_3
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4737
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 4738
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

    .line 4739
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4741
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    if-nez p4, :cond_4

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, p3, :cond_5

    .line 4742
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4738
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4746
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

    .line 4747
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 4748
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v7, v3, :cond_8

    if-nez p4, :cond_7

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, p3, :cond_8

    .line 4750
    :cond_7
    nop

    .line 4751
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v7

    .line 4752
    .local v7, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v8, v6, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v8, v7, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 4753
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4746
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4758
    .end local v3    # "userId":I
    .end local v4    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v5    # "i":I
    :cond_9
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4759
    nop

    .line 4761
    return-object v0

    .line 4758
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4759
    throw v3
.end method

.method getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingUser"    # I

    .line 517
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_0

    .line 518
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

    .line 519
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

    .line 576
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    return-object v0
.end method

.method hasBackgroundServicesLocked(I)Z
    .locals 4
    .param p1, "callingUser"    # I

    .line 523
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 524
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

.method hasForegroundServiceNotificationLocked(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 529
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_2

    .line 530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 531
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 532
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_1

    .line 533
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 534
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v3, :cond_0

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/channelId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has fg service notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 530
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "appUid"    # I
    .param p3, "appPid"    # I
    .param p4, "localPackageName"    # Ljava/lang/String;

    .line 1104
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1105
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1106
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const-string v6, "Bad notification for startForeground"

    const/4 v7, 0x1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 1108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1109
    return-void

    .line 1108
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

    .line 4486
    const/4 v3, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4487
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-interface {v0, v4}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4492
    :cond_0
    goto :goto_0

    .line 4489
    :catch_0
    move-exception v0

    .line 4490
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to send kill process details to servicetracker HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4491
    iput-object v3, v1, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    .line 4495
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

    .line 4496
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 4497
    .local v5, "r":Lcom/android/server/am/ConnectionRecord;
    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 4495
    .end local v5    # "r":Lcom/android/server/am/ConnectionRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4499
    .end local v0    # "i":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4500
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4502
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 4505
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_b

    .line 4506
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v6

    .line 4507
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    monitor-enter v7

    .line 4508
    :try_start_1
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 4509
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4510
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v7, v2, :cond_2

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-nez v7, :cond_2

    .line 4511
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4512
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4514
    :cond_2
    invoke-virtual {v6, v3}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 4515
    iput-object v3, v6, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4516
    iput v0, v6, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4517
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 4518
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4519
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

    .line 4522
    :cond_3
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 4523
    .local v7, "numClients":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "bindingi":I
    :goto_3
    if-ltz v8, :cond_a

    .line 4524
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/IntentBindRecord;

    .line 4525
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

    .line 4527
    :cond_4
    iput-object v3, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 4528
    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 4533
    iget-object v10, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    sub-int/2addr v10, v4

    .local v10, "appi":I
    :goto_4
    if-ltz v10, :cond_9

    .line 4534
    iget-object v11, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 4536
    .local v11, "proc":Lcom/android/server/am/ProcessRecord;
    iget-boolean v12, v11, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v12, :cond_8

    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v12, :cond_5

    .line 4537
    goto :goto_7

    .line 4542
    :cond_5
    iget-object v12, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppBindRecord;

    .line 4543
    .local v12, "abind":Lcom/android/server/am/AppBindRecord;
    const/4 v13, 0x0

    .line 4544
    .local v13, "hasCreate":Z
    iget-object v14, v12, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    sub-int/2addr v14, v4

    .local v14, "conni":I
    :goto_5
    if-ltz v14, :cond_7

    .line 4545
    iget-object v15, v12, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    .line 4546
    .local v15, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v3, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x31

    if-ne v3, v4, :cond_6

    .line 4548
    const/4 v13, 0x1

    .line 4549
    goto :goto_6

    .line 4544
    .end local v15    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_6
    add-int/lit8 v14, v14, -0x1

    const/4 v3, 0x0

    goto :goto_5

    .line 4552
    .end local v14    # "conni":I
    :cond_7
    :goto_6
    if-nez v13, :cond_8

    .line 4533
    .end local v11    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "abind":Lcom/android/server/am/AppBindRecord;
    .end local v13    # "hasCreate":Z
    :cond_8
    :goto_7
    add-int/lit8 v10, v10, -0x1

    const/4 v3, 0x0

    goto :goto_4

    .line 4523
    .end local v9    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v10    # "appi":I
    :cond_9
    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x0

    goto :goto_3

    .line 4505
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "numClients":I
    .end local v8    # "bindingi":I
    :cond_a
    add-int/lit8 v5, v5, -0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 4509
    .restart local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4567
    .end local v5    # "i":I
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_b
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v1, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    .line 4570
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "i":I
    :goto_8
    if-ltz v5, :cond_14

    .line 4571
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v6

    .line 4575
    .restart local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-nez v7, :cond_c

    .line 4576
    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4577
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->updateBoundClientUids()V

    .line 4582
    :cond_c
    iget-object v7, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 4583
    .local v7, "curRec":Lcom/android/server/am/ServiceRecord;
    if-eq v7, v6, :cond_d

    .line 4584
    if-eqz v7, :cond_13

    .line 4585
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

    .line 4593
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

    .line 4596
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

    .line 4598
    const/16 v8, 0x7552

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4599
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

    .line 4598
    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4600
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_a

    .line 4601
    :cond_e
    if-eqz p2, :cond_12

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v9, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4602
    invoke-virtual {v8, v9, v0}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_9

    .line 4607
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/OpStartAppControlInjector;->canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 4608
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_a

    .line 4611
    :cond_10
    invoke-direct {v1, v6, v4}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v8

    .line 4616
    .local v8, "scheduled":Z
    if-nez v8, :cond_11

    .line 4617
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_a

    .line 4618
    :cond_11
    invoke-virtual {v6, v0}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 4622
    iput-boolean v0, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 4623
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v9, :cond_13

    .line 4624
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    .line 4625
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4624
    invoke-virtual {v9, v0, v10, v11, v12}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    goto :goto_a

    .line 4603
    .end local v8    # "scheduled":Z
    :cond_12
    :goto_9
    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4570
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "curRec":Lcom/android/server/am/ServiceRecord;
    :cond_13
    :goto_a
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_8

    .line 4631
    .end local v5    # "i":I
    :cond_14
    if-nez p2, :cond_18

    .line 4632
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->stopAllServices()V

    .line 4633
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->clearBoundClientUids()V

    .line 4636
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0    # "i":I
    :goto_b
    if-ltz v0, :cond_16

    .line 4637
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 4638
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

    .line 4640
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4641
    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4636
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 4644
    .end local v0    # "i":I
    :cond_16
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0    # "i":I
    :goto_c
    if-ltz v0, :cond_18

    .line 4645
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4646
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

    .line 4648
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4644
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 4654
    .end local v0    # "i":I
    :cond_18
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4655
    .restart local v0    # "i":I
    :goto_d
    if-lez v0, :cond_1a

    .line 4656
    add-int/lit8 v0, v0, -0x1

    .line 4657
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4658
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, v2, :cond_19

    .line 4659
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 4660
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4661
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

    .line 4663
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_19
    goto :goto_d

    .line 4665
    :cond_1a
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 4666
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4669
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 4671
    .local v0, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 4672
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 4673
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 4675
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 4676
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 4677
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 4678
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 4679
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 4680
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 4681
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 4682
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 4683
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v1, :cond_1

    .line 4684
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4686
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_2

    .line 4687
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4689
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_3

    .line 4690
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4692
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4693
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 4696
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    .line 4697
    .local v1, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "conni":I
    :goto_0
    if-ltz v2, :cond_7

    .line 4698
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4699
    .local v3, "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 4700
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 4701
    .local v5, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v6, :cond_5

    .line 4702
    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 4703
    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 4704
    return-object v0

    .line 4699
    .end local v5    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4697
    .end local v3    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4708
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

    .line 5330
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

    .line 1112
    nop

    .line 1113
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1114
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1112
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

    .line 1116
    .local v0, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v1, 0x0

    .line 1117
    .local v1, "ret":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1119
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_0

    .line 1126
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/IntentBindRecord;

    .line 1127
    .local v2, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v2, :cond_1

    .line 1128
    iget-object v1, v2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    goto :goto_0

    .line 1120
    .end local v2    # "ib":Lcom/android/server/am/IntentBindRecord;
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Accessing service from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
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

    .line 1132
    :cond_1
    :goto_0
    return-object v1
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3256
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3257
    return-void

    .line 3259
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v1

    const-string v2, "ActivityManager"

    if-nez v1, :cond_1

    .line 3265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting service that is not needed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    return-void

    .line 3269
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v1, :cond_6

    .line 3270
    const/4 v1, 0x0

    .line 3271
    .local v1, "shouldDelay":Z
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3273
    .local v3, "top_rc":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v0, v5

    .line 3275
    .local v0, "isPersistent":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 3276
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->launching:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    .line 3278
    const/4 v1, 0x1

    .line 3281
    :cond_3
    if-nez v1, :cond_4

    .line 3282
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

    .line 3284
    :cond_4
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v4, :cond_5

    .line 3285
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

    .line 3288
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 3289
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 3291
    .end local v0    # "isPersistent":Z
    .end local v1    # "shouldDelay":Z
    .end local v3    # "top_rc":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    goto :goto_1

    .line 3292
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

    .line 3296
    :goto_1
    goto :goto_2

    .line 3294
    :catch_0
    move-exception v0

    .line 3297
    :goto_2
    return-void
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 4318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4319
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 4320
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4321
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_2

    .line 4323
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

    .line 4324
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 4325
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4326
    add-int/lit8 v0, v0, -0x1

    .line 4327
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4318
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4330
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;

    .line 2441
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2443
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

    .line 2445
    :cond_0
    if-eqz v2, :cond_c

    .line 2446
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object v8, v0

    .line 2448
    .local v8, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    move-object v9, v0

    .line 2449
    .local v9, "b":Lcom/android/server/am/IntentBindRecord;
    if-eqz v9, :cond_b

    iget-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v0, :cond_b

    .line 2450
    iput-object v4, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 2451
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2452
    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 2453
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v11

    .line 2454
    .local v11, "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v0

    .local v12, "conni":I
    :goto_0
    if-ltz v12, :cond_a

    .line 2455
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 2456
    .local v13, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_9

    .line 2457
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    move-object v15, v0

    .line 2458
    .local v15, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v8, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2459
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

    .line 2461
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

    .line 2463
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

    .line 2467
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

    .line 2472
    :cond_5
    if-eqz v15, :cond_6

    :try_start_2
    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_6

    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_6

    .line 2473
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

    .line 2494
    :catch_0
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_3

    .line 2476
    :cond_6
    :goto_2
    :try_start_3
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_7

    .line 2477
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

    .line 2483
    :cond_7
    const/16 v0, 0x2328

    if-eqz v15, :cond_8

    iget-object v3, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v3, :cond_8

    iget-object v3, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8

    .line 2484
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

    .line 2489
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

    .line 2492
    invoke-static {v0}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2498
    goto :goto_4

    .line 2494
    :catch_1
    move-exception v0

    goto :goto_3

    .end local v16    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v8    # "filter":Landroid/content/Intent$FilterComparison;
    :catch_2
    move-exception v0

    move-object/from16 v16, v8

    .line 2495
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

    .line 2496
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

    .line 2495
    invoke-static {v7, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2456
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

    .line 2454
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

    .line 2449
    .end local v11    # "connections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v12    # "conni":I
    .end local v16    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v8    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_b
    move-object/from16 v16, v8

    .line 2503
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

    .line 2506
    .end local v9    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v16    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2507
    nop

    .line 2508
    return-void

    .line 2506
    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2507
    throw v0
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .locals 18
    .param p1, "c"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"    # Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3977
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3978
    .local v3, "binder":Landroid/os/IBinder;
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 3979
    .local v4, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v5, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 3980
    .local v5, "s":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3981
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v0, :cond_0

    .line 3982
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3983
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 3984
    invoke-virtual {v5, v3}, Lcom/android/server/am/ServiceRecord;->removeConnection(Landroid/os/IBinder;)V

    .line 3987
    :cond_0
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3988
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 3989
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-object/from16 v7, p3

    if-eq v6, v7, :cond_2

    .line 3990
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->removeConnection(Ljava/lang/Object;)V

    goto :goto_0

    .line 3989
    :cond_1
    move-object/from16 v7, p3

    .line 3992
    :cond_2
    :goto_0
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x1

    move-object/from16 v9, p2

    if-eq v6, v9, :cond_7

    .line 3993
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3997
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v10, :cond_3

    .line 3998
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6, v10}, Lcom/android/server/am/OpBGFrozenInjector;->clientConnectionRemoveEvent(II)V

    .line 4002
    :cond_3
    iget v6, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_4

    .line 4003
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    .line 4007
    :cond_4
    iget v6, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v10, 0x1000000

    and-int/2addr v6, v10

    if-eqz v6, :cond_5

    .line 4008
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateWhitelistManager()V

    .line 4009
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-nez v6, :cond_5

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    .line 4010
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v6}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4014
    :cond_5
    iget v6, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v10, 0x100000

    and-int/2addr v6, v10

    if-eqz v6, :cond_6

    .line 4015
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateHasBindingWhitelistingBgActivityStarts()V

    .line 4017
    :cond_6
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_7

    .line 4018
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v6, v2, v8}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 4021
    :cond_7
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 4022
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v6, :cond_8

    .line 4023
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4024
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 4025
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4029
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

    .line 4032
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 4033
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v8, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4036
    :cond_9
    iget-boolean v0, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_10

    .line 4044
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

    .line 4047
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

    .line 4050
    :try_start_0
    const-string/jumbo v0, "unbind"

    invoke-direct {v1, v5, v10, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 4051
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

    .line 4056
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v10, v12}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4058
    :cond_b
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v12, "updateOomAdj_unbindService"

    const/4 v13, 0x1

    invoke-virtual {v0, v11, v13, v12}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 4060
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 4063
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 4064
    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v11, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v11, v11, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v0, v5, v11}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4068
    goto :goto_1

    .line 4065
    :catch_0
    move-exception v0

    .line 4066
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

    .line 4067
    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4073
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4074
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4077
    :cond_d
    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/4 v8, 0x1

    and-int/2addr v0, v8

    if-eqz v0, :cond_f

    .line 4078
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    .line 4079
    .local v0, "hasAutoCreate":Z
    if-nez v0, :cond_e

    .line 4080
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v8, :cond_e

    .line 4081
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    .line 4082
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 4081
    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 4085
    :cond_e
    const/4 v8, 0x1

    invoke-direct {v1, v5, v8, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    goto :goto_2

    .line 4077
    .end local v0    # "hasAutoCreate":Z
    :cond_f
    const/4 v8, 0x1

    .line 4089
    :goto_2
    iput-boolean v8, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 4092
    :cond_10
    return-void
.end method

.method scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4898
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4901
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4903
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4904
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 4905
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4906
    return-void

    .line 4899
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 4887
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4890
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4892
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4893
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 4894
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x4e20

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x30d40

    .line 4893
    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4895
    return-void

    .line 4888
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

    .line 4097
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

    .line 4100
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4101
    .local v0, "inDestroying":Z
    if-eqz p1, :cond_9

    .line 4102
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_6

    .line 4105
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 4106
    const/4 v1, 0x0

    if-eqz p4, :cond_4

    if-eq p4, v3, :cond_4

    if-eq p4, v2, :cond_3

    const/4 v2, 0x3

    if-eq p4, v2, :cond_2

    const/16 v2, 0x3e8

    if-ne p4, v2, :cond_1

    .line 4141
    invoke-virtual {p1, p3, v3, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4142
    goto :goto_0

    .line 4145
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

    .line 4129
    :cond_2
    invoke-virtual {p1, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v2

    .line 4130
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v2, :cond_5

    .line 4131
    iput v1, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 4132
    iget v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 4134
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 4117
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_3
    invoke-virtual {p1, p3, v1, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4118
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v2

    if-ne v2, p3, :cond_5

    .line 4121
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_0

    .line 4110
    :cond_4
    invoke-virtual {p1, p3, v1, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4112
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 4113
    nop

    .line 4148
    :cond_5
    :goto_0
    if-nez p4, :cond_8

    .line 4149
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    goto :goto_1

    .line 4151
    :cond_6
    if-ne p2, v2, :cond_8

    .line 4155
    if-nez v0, :cond_7

    .line 4160
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_8

    .line 4161
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

    .line 4164
    :cond_7
    iget v2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq v2, v3, :cond_8

    .line 4165
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

    .line 4168
    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 4171
    :cond_8
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4172
    .local v1, "origId":J
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 4173
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4174
    .end local v1    # "origId":J
    goto :goto_2

    .line 4175
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done executing unknown service from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4175
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    :goto_2
    return-void
.end method

.method serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "serviceRecord"    # Ljava/lang/CharSequence;

    .line 4881
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

    .line 4884
    return-void
.end method

.method serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 4839
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4840
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4844
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4845
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4847
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4850
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v2, :cond_2

    .line 4851
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service foreground-required timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 4854
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4855
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4857
    if-eqz v1, :cond_3

    .line 4858
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

    .line 4862
    :cond_3
    return-void

    .line 4841
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4855
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

    .line 4782
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 4783
    .local v3, "anrMessage":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4784
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4786
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4788
    :cond_0
    :try_start_1
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 4791
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 4792
    .local v5, "now":J
    nop

    .line 4793
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4e20

    goto :goto_0

    :cond_2
    const v0, 0x30d40

    :goto_0
    int-to-long v7, v0

    sub-long v7, v5, v7

    .line 4794
    .local v7, "maxTime":J
    const/4 v0, 0x0

    .line 4795
    .local v0, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v9, 0x0

    .line 4796
    .local v9, "nextTime":J
    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_5

    .line 4797
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 4798
    .local v12, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v13, v13, v7

    if-gez v13, :cond_3

    .line 4799
    move-object v0, v12

    .line 4800
    goto :goto_2

    .line 4802
    :cond_3
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v13, v13, v9

    if-lez v13, :cond_4

    .line 4803
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-wide v9, v13

    .line 4796
    .end local v12    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 4806
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

    .line 4807
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Timeout executing service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 4809
    .local v11, "sw":Ljava/io/StringWriter;
    new-instance v12, Lcom/android/internal/util/FastPrintWriter;

    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-direct {v12, v11, v13, v14}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 4810
    .local v12, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4811
    const-string v13, "    "

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4812
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V

    .line 4813
    invoke-virtual {v11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 4814
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4815
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    move-wide v15, v5

    .end local v5    # "now":J
    .local v15, "now":J
    const-wide/32 v5, 0x6ddd00

    invoke-virtual {v13, v14, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4816
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executing service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 4817
    .end local v11    # "sw":Ljava/io/StringWriter;
    .end local v12    # "pw":Ljava/io/PrintWriter;
    goto :goto_4

    .line 4806
    .end local v15    # "now":J
    .restart local v5    # "now":J
    :cond_6
    move-wide v15, v5

    .line 4818
    .end local v5    # "now":J
    .restart local v15    # "now":J
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 4820
    .local v5, "msg":Landroid/os/Message;
    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4821
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-boolean v11, v2, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v11, :cond_7

    .line 4822
    const-wide/16 v11, 0x4e20

    add-long/2addr v11, v9

    goto :goto_3

    :cond_7
    const-wide/32 v11, 0x30d40

    add-long/2addr v11, v9

    .line 4821
    :goto_3
    invoke-virtual {v6, v5, v11, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 4824
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

    .line 4826
    if-eqz v3, :cond_8

    .line 4830
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

    .line 4833
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4835
    :cond_8
    return-void

    .line 4789
    :cond_9
    :goto_5
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4824
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

    .line 1189
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1190
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1192
    .local v2, "origId":J
    move-object v10, p0

    move-object v11, p1

    move-object v12, p2

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1193
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v0, :cond_0

    .line 1194
    move-object v4, p0

    move-object v5, v0

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1198
    nop

    .line 1199
    return-void

    .line 1197
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1198
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

    .line 914
    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v10

    .line 915
    .local v10, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    const/4 v0, 0x1

    if-eqz v10, :cond_0

    .line 916
    iget-object v1, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 918
    :cond_0
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 919
    const/16 v1, 0x63

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 920
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 919
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 922
    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 923
    :try_start_0
    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    .line 924
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 927
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "!!"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 930
    :cond_1
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_5

    if-eqz p5, :cond_5

    .line 931
    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v11

    .line 932
    .local v0, "first":Z
    :goto_0
    iget-object v2, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    add-long/2addr v2, v4

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 934
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v2, :cond_3

    .line 935
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 936
    .local v2, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 937
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

    .line 938
    :cond_3
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_4

    .line 939
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

    .line 938
    :cond_4
    :goto_1
    nop

    .line 941
    :goto_2
    if-eqz v0, :cond_6

    .line 942
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    goto :goto_3

    .line 944
    .end local v0    # "first":Z
    :cond_5
    if-nez p4, :cond_7

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    goto :goto_5

    .line 945
    :cond_7
    :goto_4
    invoke-virtual {p1, p3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 948
    :goto_5
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    .line 924
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

    .line 589
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

    .line 597
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

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v8, p3

    .line 601
    :goto_0
    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz v13, :cond_3

    .line 602
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 604
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2

    .line 610
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    move v0, v1

    .line 611
    .local v0, "callerFg":Z
    move v5, v0

    goto :goto_2

    .line 605
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

    .line 612
    .end local v0    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_3
    const/4 v0, 0x1

    move v5, v0

    .line 615
    .local v5, "callerFg":Z
    :goto_2
    const/4 v2, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 616
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

    .line 618
    .local v8, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v9, 0x0

    if-nez v8, :cond_4

    .line 619
    return-object v9

    .line 621
    :cond_4
    iget-object v0, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_6

    .line 622
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 623
    iget-object v1, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string/jumbo v1, "private to package"

    :goto_3
    const-string v2, "!"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-object v0

    .line 626
    :cond_6
    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 628
    .local v10, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->exists(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 629
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

    .line 630
    return-object v9

    .line 636
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

    .line 641
    .local v6, "bgLaunch":Z
    const/4 v0, 0x0

    .line 642
    .local v0, "forcedStandby":Z
    if-eqz v6, :cond_9

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {v12, v1, v2}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 643
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v1, :cond_8

    .line 644
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

    .line 643
    .end local v5    # "callerFg":Z
    .restart local v19    # "callerFg":Z
    :cond_8
    move/from16 v5, v19

    .line 647
    .end local v19    # "callerFg":Z
    .restart local v5    # "callerFg":Z
    :goto_4
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_5

    .line 642
    .end local v5    # "callerFg":Z
    .restart local v19    # "callerFg":Z
    :cond_9
    move/from16 v5, v19

    .line 651
    .end local v19    # "callerFg":Z
    .restart local v5    # "callerFg":Z
    move/from16 v16, v0

    .end local v0    # "forcedStandby":Z
    .local v16, "forcedStandby":Z
    :goto_5
    const/4 v0, 0x0

    .line 652
    .local v0, "forceSilentAbort":Z
    const-string v4, " pkg="

    const-string v3, " from pid="

    const-string v2, " to "

    const-string v1, " uid="

    if-eqz p6, :cond_d

    .line 653
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

    .line 655
    .local v0, "mode":I
    if-eqz v0, :cond_c

    const/4 v7, 0x1

    if-eq v0, v7, :cond_b

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    .line 671
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "!!"

    const-string v3, "foreground not allowed as per app op"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 655
    :cond_a
    move-object/from16 v9, p7

    goto :goto_6

    .line 663
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

    .line 667
    const/4 v5, 0x0

    .line 668
    .end local p6    # "fgRequired":Z
    .local v5, "fgRequired":Z
    const/16 v18, 0x1

    .line 669
    .end local v19    # "forceSilentAbort":Z
    .local v18, "forceSilentAbort":Z
    goto :goto_8

    .line 655
    .end local v5    # "fgRequired":Z
    .end local v18    # "forceSilentAbort":Z
    .restart local v19    # "forceSilentAbort":Z
    .restart local p6    # "fgRequired":Z
    :cond_c
    move-object/from16 v9, p7

    const/4 v7, 0x1

    .line 659
    :goto_6
    goto :goto_7

    .line 652
    .end local v19    # "forceSilentAbort":Z
    .end local v21    # "callerFg":Z
    .local v0, "forceSilentAbort":Z
    .local v5, "callerFg":Z
    :cond_d
    move-object/from16 v9, p7

    move/from16 v19, v0

    move/from16 v21, v5

    .line 677
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

    .line 678
    const/4 v0, 0x0

    return-object v0

    .line 684
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

    .line 694
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

    .line 696
    .local v0, "allowed":I
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityManagerServiceInjector;->isAllowLaunchBackground(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 697
    const/4 v0, 0x0

    .line 707
    :cond_11
    const-string v1, "com.coloros.mcs"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 708
    const-string v1, "com.heytap.mcs"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "net.oneplus.odm"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 709
    const-string v1, "com.oneplus.config"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "com.oneplus.opbugreportlite"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 710
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

    .line 711
    .local v1, "isCallingPackageSystem":Z
    if-eqz v0, :cond_18

    if-nez v1, :cond_18

    .line 713
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

    .line 717
    const/4 v7, 0x1

    if-eq v0, v7, :cond_17

    if-eqz v18, :cond_14

    move-object/from16 v6, p0

    goto :goto_c

    .line 722
    :cond_14
    if-eqz v16, :cond_16

    .line 726
    if-eqz v8, :cond_16

    .line 727
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v2, :cond_15

    .line 728
    const-string v2, "Silently dropping foreground service launch due to FAS"

    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_15
    const/4 v2, 0x0

    return-object v2

    .line 735
    :cond_16
    move-object/from16 v6, p0

    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessList;->getUidRecordLocked(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 736
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

    .line 717
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_17
    move-object/from16 v6, p0

    .line 720
    :goto_c
    const/4 v2, 0x0

    return-object v2

    .line 711
    :cond_18
    const/4 v7, 0x1

    move-object/from16 v6, p0

    move-object/from16 v12, v25

    .line 744
    .end local v0    # "allowed":I
    .end local v1    # "isCallingPackageSystem":Z
    :goto_d
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1b

    if-eqz v8, :cond_1b

    .line 745
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_1a

    .line 746
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

    .line 749
    :cond_1a
    const/4 v5, 0x0

    move v8, v5

    .line 752
    :cond_1b
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v14, v13, v1, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v20

    .line 761
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

    .line 763
    const/4 v0, 0x0

    return-object v0

    .line 766
    :cond_1c
    const/4 v7, 0x0

    invoke-direct {v9, v10, v13, v7}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 767
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

    .line 769
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 770
    iput-boolean v14, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 771
    iput-boolean v7, v10, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 772
    iput-boolean v8, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 773
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

    .line 776
    if-eqz v8, :cond_1f

    .line 778
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 779
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_1e

    .line 780
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v10, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 783
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

    .line 788
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_1f
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v7

    .line 789
    .local v7, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v0, 0x0

    .line 790
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

    .line 791
    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 792
    iget-object v2, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 793
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0xb

    if-le v3, v4, :cond_20

    goto :goto_e

    .line 821
    :cond_20
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_21

    .line 825
    const/4 v0, 0x1

    .line 826
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

    .line 828
    :cond_21
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v3, :cond_29

    .line 829
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 830
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Not potential delay (state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v5

    .line 833
    .local v5, "reason":Ljava/lang/String;
    if-eqz v5, :cond_22

    .line 834
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 804
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

    .line 806
    :cond_24
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v1, :cond_26

    .line 809
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

    .line 810
    :cond_25
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v1

    .line 812
    :cond_26
    iget-object v1, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, v9, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v1, v3, :cond_27

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying start of: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v1, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 817
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v1

    .line 819
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

    .line 820
    :cond_28
    const/4 v0, 0x1

    .line 841
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_29
    :goto_f
    move v11, v0

    goto/16 :goto_12

    :cond_2a
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v2, :cond_2e

    .line 842
    if-nez v14, :cond_2d

    if-eqz v8, :cond_2b

    goto :goto_10

    .line 845
    :cond_2b
    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2c

    .line 846
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

    .line 848
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

    .line 843
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

    .line 853
    :cond_2e
    :goto_11
    move v11, v0

    .end local v0    # "addToStarting":Z
    .local v11, "addToStarting":Z
    :goto_12
    if-eqz p10, :cond_2f

    .line 854
    invoke-virtual {v10}, Lcom/android/server/am/ServiceRecord;->whitelistBgActivityStartsOnServiceStart()V

    .line 856
    :cond_2f
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object v3, v10

    move v4, v14

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v12

    .line 858
    .local v12, "cmp":Landroid/content/ComponentName;
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-nez v0, :cond_30

    .line 859
    nop

    .line 860
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

    .line 864
    :cond_30
    return-object v12
.end method

.method stopAllForegroundServicesLocked(ILjava/lang/String;)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 293
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 294
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 295
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v2, "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 297
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 298
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v5, :cond_0

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 299
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 300
    :cond_0
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_1

    .line 301
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 308
    .local v3, "numToStop":I
    const-string v4, "ActivityManager"

    if-lez v3, :cond_3

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_3

    .line 309
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

    .line 312
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 313
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 314
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v7, :cond_4

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Stopping fg for service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V

    .line 312
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 319
    .end local v5    # "i":I
    :cond_5
    return-void
.end method

.method stopForegroundServicesForChannelLocked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 549
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_2

    .line 550
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 551
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 552
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_1

    .line 553
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v3, :cond_0

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping FGS u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/channelId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for conversation channel clear"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 550
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method stopInBackgroundLocked(I)V
    .locals 13
    .param p1, "uid"    # I

    .line 1011
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1012
    .local v0, "services":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    .line 1013
    .local v1, "stopping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    if-eqz v0, :cond_5

    .line 1014
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 1015
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1020
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_3

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_3

    .line 1022
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

    .line 1025
    if-nez v1, :cond_0

    .line 1026
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 1028
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 1032
    .local v4, "compName":Ljava/lang/String;
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v6, "ActivityManager"

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->inAppIdleWhitelist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1033
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "temp solution to keep engineering mode related services alive: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    goto :goto_1

    .line 1039
    :cond_1
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v4}, Lcom/android/server/am/EventLogTags;->writeAmStopIdleService(ILjava/lang/String;)V

    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1041
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v7, "Stopping service due to app idle: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1043
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget-wide v8, v3, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 1045
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 1044
    invoke-static {v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1046
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
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

    .line 1052
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {p1, v6, v4}, Lcom/android/server/am/OpBGFrozenInjector;->isResStopServiceForIdle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1053
    return-void

    .line 1057
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1063
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1014
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "compName":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 1068
    .end local v2    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 1069
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 1070
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 1071
    .restart local v3    # "service":Lcom/android/server/am/ServiceRecord;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1072
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1073
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1069
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1077
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

    .line 978
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

    .line 981
    :goto_0
    iget-object v0, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    .line 982
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_2

    if-eqz v16, :cond_1

    goto :goto_1

    .line 983
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
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

    .line 990
    :cond_2
    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 991
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 990
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v8, p4

    move v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v1

    .line 992
    .local v1, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v1, :cond_4

    .line 993
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_3

    .line 994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 996
    .local v2, "origId":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {v13, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    nop

    .line 1000
    const/4 v0, 0x1

    return v0

    .line 998
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    throw v0

    .line 1002
    .end local v2    # "origId":J
    :cond_3
    const/4 v0, -0x1

    return v0

    .line 1005
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 7
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I

    .line 1137
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

    .line 1139
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1140
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1141
    if-ltz p3, :cond_4

    .line 1145
    invoke-virtual {v0, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v2

    .line 1146
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v2, :cond_2

    .line 1147
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1148
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1149
    .local v3, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 1150
    if-ne v3, v2, :cond_1

    .line 1151
    goto :goto_1

    .line 1153
    .end local v3    # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_1
    goto :goto_0

    .line 1156
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v3

    if-eq v3, p3, :cond_3

    .line 1157
    return v1

    .line 1160
    :cond_3
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopServiceToken startId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is last, but have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 1162
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remaining args"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1161
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_4
    const/16 v2, 0x63

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 1168
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1167
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1170
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2

    .line 1171
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 1172
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 1174
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v2, :cond_5

    .line 1175
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 1176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1175
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1178
    :cond_5
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1180
    .local v2, "origId":J
    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 1181
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1182
    const/4 v1, 0x1

    return v1

    .line 1172
    .end local v2    # "origId":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1184
    :cond_6
    return v1
.end method

.method systemServicesReady()V
    .locals 2

    .line 478
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 479
    .local v0, "ast":Lcom/android/server/AppStateTracker;
    new-instance v1, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 480
    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mAppWidgetManagerInternal:Landroid/appwidget/AppWidgetManagerInternal;

    .line 481
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices;->setWhiteListAllowWhileInUsePermissionInFgs()V

    .line 482
    return-void
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z

    .line 2613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2615
    .local v0, "origId":J
    if-eqz p1, :cond_6

    .line 2616
    :try_start_0
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2618
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 2619
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

    .line 2621
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

    .line 2619
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 2624
    .local v4, "inDestroying":Z
    if-eqz v3, :cond_5

    .line 2625
    iget-object v6, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_4

    if-nez v4, :cond_4

    .line 2628
    const/4 v6, 0x0

    .line 2629
    .local v6, "inFg":Z
    iget-object v8, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_3

    .line 2630
    iget-object v9, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 2631
    .local v9, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_2

    iget v10, v9, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    .line 2633
    const/4 v6, 0x1

    .line 2634
    goto :goto_2

    .line 2629
    .end local v9    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 2638
    .end local v8    # "i":I
    :cond_3
    :goto_2
    :try_start_1
    invoke-direct {p0, p1, v3, v6, v7}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2641
    goto :goto_3

    .line 2639
    :catch_0
    move-exception v7

    .line 2642
    .end local v6    # "inFg":Z
    :goto_3
    goto :goto_4

    .line 2645
    :cond_4
    :try_start_2
    iput-boolean v7, v3, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 2649
    :cond_5
    :goto_4
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 2652
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v3    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v4    # "inDestroying":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2653
    throw v2

    .line 2652
    :cond_6
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2653
    nop

    .line 2654
    return-void
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .locals 14
    .param p1, "connection"    # Landroid/app/IServiceConnection;

    .line 2546
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2547
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

    .line 2548
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2549
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 2550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unbind failed: could not find connection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2551
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2550
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    return v3

    .line 2555
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2557
    .local v4, "origId":J
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_9

    .line 2558
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 2559
    .local v6, "r":Lcom/android/server/am/ConnectionRecord;
    new-instance v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v8}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 2560
    .local v8, "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->packageName:Ljava/lang/String;

    .line 2561
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iput-object v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->processName:Ljava/lang/String;

    .line 2562
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-wide v9, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    long-to-double v9, v9

    iput-wide v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->lastActivity:D

    .line 2563
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_2

    .line 2564
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2565
    iget-object v9, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v9, v9, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iput-boolean v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    goto :goto_1

    .line 2567
    :cond_2
    const/4 v9, -0x1

    iput v9, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->pid:I

    .line 2568
    iput-boolean v3, v8, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->serviceB:Z

    .line 2571
    :goto_1
    new-instance v9, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v9}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 2572
    .local v9, "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    iget-object v10, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v10, v9, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->processName:Ljava/lang/String;

    .line 2573
    iget-object v10, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v10, v9, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2575
    const/4 v10, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices;->getServicetrackerInstance()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2576
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    invoke-interface {v11, v8, v9}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;->unbindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2581
    :cond_3
    goto :goto_2

    .line 2578
    :catch_0
    move-exception v11

    .line 2579
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v12, "Failed to send unbind details to servicetracker HAL"

    invoke-static {v2, v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2580
    iput-object v10, p0, Lcom/android/server/am/ActiveServices;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;

    .line 2582
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {p0, v6, v10, v10}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 2583
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v6, :cond_4

    .line 2585
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

    .line 2586
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2589
    :cond_4
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_8

    .line 2590
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v11, v11, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v11, :cond_5

    .line 2591
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v11}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2594
    :cond_5
    iget v11, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x8000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_8

    .line 2595
    iget-object v11, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v11, v11, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v7, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 2596
    iget-object v11, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2597
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

    .line 2596
    :cond_7
    :goto_3
    invoke-virtual {v11, v12, v7, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2601
    .end local v6    # "r":Lcom/android/server/am/ConnectionRecord;
    .end local v8    # "sData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v9    # "cData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    :cond_8
    goto/16 :goto_0

    .line 2603
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_unbindService"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2606
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2607
    nop

    .line 2609
    return v7

    .line 2606
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2607
    throw v2
.end method

.method updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .locals 13
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1271
    const/4 v0, 0x0

    .line 1272
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActiveServices$ActiveForegroundApp;>;"
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1274
    .local v2, "now":J
    const-wide v4, 0x7fffffffffffffffL

    .line 1275
    .local v4, "nextUpdateTime":J
    if-eqz p1, :cond_a

    .line 1276
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

    .line 1278
    :cond_0
    iget-object v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_8

    .line 1279
    iget-object v8, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1280
    .local v8, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 1281
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v9

    .line 1282
    .local v9, "canRemove":Z
    if-eqz v9, :cond_1

    .line 1284
    iget-object v10, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1285
    iput-boolean v7, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1286
    goto/16 :goto_1

    .line 1288
    :cond_1
    iget-wide v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v10, v10, v4

    if-gez v10, :cond_2

    .line 1289
    iget-wide v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    move-wide v4, v10

    .line 1292
    .end local v9    # "canRemove":Z
    :cond_2
    iget-boolean v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v9, :cond_7

    .line 1295
    iget v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1296
    if-nez v0, :cond_3

    .line 1297
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    .line 1299
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

    .line 1301
    :cond_4
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1303
    :cond_5
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v9, :cond_6

    .line 1304
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

    .line 1308
    :cond_6
    iget v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 1278
    .end local v8    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_7
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 1312
    .end local v6    # "i":I
    :cond_8
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeMessages(I)V

    .line 1313
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v4, v7

    if-gez v7, :cond_a

    .line 1314
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

    .line 1316
    :cond_9
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1317
    .local v6, "msg":Landroid/os/Message;
    nop

    .line 1318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 1317
    invoke-virtual {p1, v6, v7, v8}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1321
    .end local v6    # "msg":Landroid/os/Message;
    :cond_a
    iget-boolean v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-nez v6, :cond_b

    .line 1322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1324
    :cond_b
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1325
    .end local v2    # "now":J
    .end local v4    # "nextUpdateTime":J
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1328
    return-void

    .line 1325
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

    .line 1437
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eq v0, p1, :cond_8

    .line 1438
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 1442
    invoke-static {p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->updateScreenState(Z)V

    .line 1447
    if-eqz p1, :cond_8

    .line 1448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1449
    .local v0, "nowElapsed":J
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    const-string v3, "Screen turned on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_8

    .line 1451
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1452
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const-wide v5, 0x7fffffffffffffffL

    .line 1453
    .local v5, "nextUpdateTime":J
    const/4 v7, 0x0

    .line 1454
    .local v7, "changed":Z
    iget-object v8, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "j":I
    :goto_1
    const-wide/16 v9, 0x0

    if-ltz v8, :cond_5

    .line 1455
    iget-object v11, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1456
    .local v11, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    cmp-long v9, v12, v9

    if-nez v9, :cond_1

    .line 1457
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_4

    .line 1458
    iput-boolean v3, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1459
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    goto :goto_2

    .line 1462
    :cond_1
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_2

    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_2

    .line 1467
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1469
    :cond_2
    invoke-virtual {p0, v11, v0, v1}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1472
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v10, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1474
    const/4 v7, 0x1

    goto :goto_2

    .line 1476
    :cond_3
    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v9, v9, v5

    if-gez v9, :cond_4

    .line 1477
    iget-wide v5, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1454
    .end local v11    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1482
    .end local v8    # "j":I
    :cond_5
    if-eqz v7, :cond_6

    .line 1484
    invoke-direct {p0, v4, v9, v10}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_3

    .line 1485
    :cond_6
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v5, v8

    if-gez v8, :cond_7

    .line 1486
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1450
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "nextUpdateTime":J
    .end local v7    # "changed":Z
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1491
    .end local v0    # "nowElapsed":J
    .end local v2    # "i":I
    :cond_8
    return-void
.end method

.method public updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 7
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 4865
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4866
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4867
    .local v1, "serviceMap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v1, :cond_1

    .line 4868
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 4870
    .local v2, "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_0
    if-ltz v3, :cond_1

    .line 4871
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 4872
    .local v4, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4873
    iput-object p1, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 4874
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4870
    .end local v4    # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4878
    .end local v2    # "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "clientProc"    # Lcom/android/server/am/ProcessRecord;

    .line 2006
    const/4 v0, 0x0

    .line 2007
    .local v0, "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2008
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 2009
    .local v2, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v3, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2010
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_3

    if-ne v3, p1, :cond_0

    .line 2011
    goto :goto_2

    .line 2012
    :cond_0
    if-nez v0, :cond_1

    .line 2013
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    goto :goto_1

    .line 2014
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2015
    goto :goto_2

    .line 2017
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2018
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 2007
    .end local v2    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2020
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method updateServiceGroupLocked(Landroid/app/IServiceConnection;II)V
    .locals 8
    .param p1, "connection"    # Landroid/app/IServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I

    .line 2511
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2512
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

    .line 2513
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2514
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v1, :cond_6

    .line 2518
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 2519
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 2520
    .local v3, "crec":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 2521
    .local v4, "srec":Lcom/android/server/am/ServiceRecord;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v5, v5, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 2522
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 2523
    if-lez p2, :cond_1

    .line 2524
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 2525
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput p2, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 2526
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput p3, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_1

    .line 2528
    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    .line 2529
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput v6, v5, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 2530
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput v6, v5, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto :goto_1

    .line 2533
    :cond_2
    if-lez p2, :cond_3

    .line 2534
    iput p2, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 2535
    iput p3, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    goto :goto_1

    .line 2537
    :cond_3
    iput v6, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 2538
    iput v6, v4, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    .line 2518
    .end local v3    # "crec":Lcom/android/server/am/ConnectionRecord;
    .end local v4    # "srec":Lcom/android/server/am/ServiceRecord;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2543
    .end local v2    # "i":I
    :cond_5
    return-void

    .line 2515
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2516
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
