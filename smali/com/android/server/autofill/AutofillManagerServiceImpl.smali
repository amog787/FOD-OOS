.class final Lcom/android/server/autofill/AutofillManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AutofillManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/autofill/AutofillManagerServiceImpl;",
        "Lcom/android/server/autofill/AutofillManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_ABANDONED_SESSION_MILLIS:I = 0x7530

.field private static final MAX_SESSION_ID_CREATE_TRIES:I = 0x800

.field private static final TAG:Ljava/lang/String; = "AutofillManagerServiceImpl"

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

.field private mClients:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/autofill/IAutoFillManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledActivities:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledApps:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHistory:Landroid/service/autofill/FillEventHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/service/autofill/AutofillServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLastPrune:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/autofill/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;

.field private mUserData:Landroid/service/autofill/UserData;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Z)V
    .locals 4
    .param p1, "master"    # Lcom/android/server/autofill/AutofillManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "uiLatencyHistory"    # Landroid/util/LocalLog;
    .param p4, "wtfHistory"    # Landroid/util/LocalLog;
    .param p5, "userId"    # I
    .param p6, "ui"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p7, "autofillCompatState"    # Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    .param p8, "disabled"    # Z

    .line 175
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 106
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 177
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 178
    iput-object p4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    .line 179
    iput-object p6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 180
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 181
    iput-object p7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 183
    invoke-virtual {p0, p8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateLocked(Z)Z

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 96
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 96
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 96
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 96
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 96
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private assertCallerLocked(Landroid/content/ComponentName;Z)V
    .locals 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "compatMode"    # Z

    .line 506
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 508
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 511
    .local v2, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .local v3, "packageUid":I
    nop

    .line 515
    if-eq v2, v3, :cond_2

    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    .line 516
    invoke-virtual {v4, v2, v0}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 517
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, "callingPackage":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App (package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", UID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") passed component ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") owned by UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AutofillManagerServiceImpl"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x3b4

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 524
    invoke-virtual {v6, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x38c

    .line 525
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x3b5

    .line 527
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    .line 526
    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 528
    .local v6, "log":Landroid/metrics/LogMaker;
    if-eqz p2, :cond_1

    .line 529
    const/16 v7, 0x586

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 531
    :cond_1
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 533
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid component: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 535
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "callingPackage":Ljava/lang/String;
    .end local v6    # "log":Landroid/metrics/LogMaker;
    :cond_2
    return-void

    .line 512
    .end local v3    # "packageUid":I
    :catch_0
    move-exception v3

    .line 513
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not verify UID for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createSessionByTokenLocked(Landroid/os/IBinder;IILandroid/os/IBinder;ZLandroid/content/ComponentName;ZZZI)Lcom/android/server/autofill/Session;
    .locals 24
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I
    .param p3, "uid"    # I
    .param p4, "appCallbackToken"    # Landroid/os/IBinder;
    .param p5, "hasCallback"    # Z
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "compatMode"    # Z
    .param p8, "bindInstantServiceAllowed"    # Z
    .param p9, "forAugmentedAutofillOnly"    # Z
    .param p10, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 475
    move-object/from16 v12, p0

    const/4 v0, 0x0

    .line 477
    .local v0, "tries":I
    :goto_0
    add-int/lit8 v11, v0, 0x1

    .line 478
    .end local v0    # "tries":I
    .local v11, "tries":I
    const/16 v0, 0x800

    const/4 v1, 0x0

    if-le v11, v0, :cond_0

    .line 479
    const-string v0, "AutofillManagerServiceImpl"

    const-string v2, "Cannot create session in 2048 tries"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-object v1

    .line 483
    :cond_0
    sget-object v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 484
    .local v10, "sessionId":I
    if-eqz v10, :cond_3

    const v0, 0x7fffffff

    if-eq v10, v0, :cond_3

    iget-object v0, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 485
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 487
    move-object/from16 v9, p6

    move/from16 v8, p7

    invoke-direct {v12, v9, v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->assertCallerLocked(Landroid/content/ComponentName;Z)V

    .line 490
    iget-object v0, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v0, :cond_1

    move-object v15, v1

    goto :goto_1

    .line 491
    :cond_1
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    move-object v15, v0

    :goto_1
    nop

    .line 492
    .local v15, "serviceComponentName":Landroid/content/ComponentName;
    new-instance v21, Lcom/android/server/autofill/Session;

    move-object/from16 v0, v21

    iget-object v2, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    iget v5, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    iget-object v6, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    iget-object v13, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    iget-object v14, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    move-object/from16 v1, p0

    move v7, v10

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v22, v10

    .end local v10    # "sessionId":I
    .local v22, "sessionId":I
    move-object/from16 v10, p1

    move/from16 v23, v11

    .end local v11    # "tries":I
    .local v23, "tries":I
    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    invoke-direct/range {v0 .. v20}, Lcom/android/server/autofill/Session;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZI)V

    .line 497
    .local v0, "newSession":Lcom/android/server/autofill/Session;
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    return-object v0

    .line 485
    .end local v0    # "newSession":Lcom/android/server/autofill/Session;
    .end local v15    # "serviceComponentName":Landroid/content/ComponentName;
    .end local v22    # "sessionId":I
    .end local v23    # "tries":I
    .restart local v10    # "sessionId":I
    .restart local v11    # "tries":I
    :cond_2
    move/from16 v22, v10

    move/from16 v23, v11

    move-object v1, v12

    .end local v10    # "sessionId":I
    .end local v11    # "tries":I
    .restart local v22    # "sessionId":I
    .restart local v23    # "tries":I
    goto :goto_2

    .line 484
    .end local v22    # "sessionId":I
    .end local v23    # "tries":I
    .restart local v10    # "sessionId":I
    .restart local v11    # "tries":I
    :cond_3
    move/from16 v22, v10

    move/from16 v23, v11

    move-object v1, v12

    .line 477
    .end local v10    # "sessionId":I
    .end local v11    # "tries":I
    .restart local v23    # "tries":I
    :goto_2
    move-object v12, v1

    move/from16 v0, v23

    goto/16 :goto_0
.end method

.method private getAugmentedAutofillServiceUidLocked()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 1258
    const-string v0, "AutofillManagerServiceImpl"

    const-string v1, "getAugmentedAutofillServiceUid(): no mRemoteAugmentedAutofillServiceInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1263
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method private isAugmentedAutofillServiceAvailableLocked()Z
    .locals 3

    .line 1174
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAugmentedAutofillService(): setupCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isSetupCompletedLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isDisabledByUserRestrictionsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", augmentedService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 1179
    invoke-virtual {v1, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    const-string v1, "AutofillManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isSetupCompletedLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isDisabledByUserRestrictionsLocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 1182
    invoke-virtual {v0, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1185
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1183
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isAutofillDisabledLocked(Landroid/content/ComponentName;)Z
    .locals 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1414
    const-wide/16 v0, 0x0

    .line 1415
    .local v0, "elapsedTime":J
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    const-string v3, " from disabled list"

    const-string v4, "Removing "

    const-string v5, "AutofillManagerServiceImpl"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 1416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1417
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1418
    .local v2, "expiration":Ljava/lang/Long;
    if-eqz v2, :cond_2

    .line 1419
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-ltz v7, :cond_0

    return v6

    .line 1421
    :cond_0
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_1

    .line 1422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_1
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    .end local v2    # "expiration":Ljava/lang/Long;
    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1431
    .local v2, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    const/4 v8, 0x0

    if-nez v7, :cond_3

    return v8

    .line 1433
    :cond_3
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1434
    .local v7, "expiration":Ljava/lang/Long;
    if-nez v7, :cond_4

    return v8

    .line 1436
    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-nez v9, :cond_5

    .line 1437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1440
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v0

    if-ltz v9, :cond_6

    return v6

    .line 1443
    :cond_6
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_7
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    return v8
.end method

.method private isCalledByAugmentedAutofillServiceLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1237
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 1238
    .local v0, "service":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    const/4 v1, 0x0

    const-string v2, "() called by UID "

    const-string v3, "AutofillManagerServiceImpl"

    if-nez v0, :cond_0

    .line 1239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but there is no augmented autofill service defined for user "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1239
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return v1

    .line 1245
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAugmentedAutofillServiceUidLocked()I

    move-result v4

    if-eq v4, p2, :cond_1

    .line 1246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but service UID is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAugmentedAutofillServiceUidLocked()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1246
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    return v1

    .line 1251
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isCalledByServiceLocked(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 903
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceUidLocked()I

    move-result v0

    .line 904
    .local v0, "serviceUid":I
    if-eq v0, p2, :cond_0

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "() called by UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but service UID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v1, 0x0

    return v1

    .line 909
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private isClientSessionDestroyedLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z
    .locals 4
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1344
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1345
    .local v0, "sessionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1346
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 1347
    .local v2, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1348
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->isDestroyed()Z

    move-result v3

    return v3

    .line 1345
    .end local v2    # "session":Lcom/android/server/autofill/Session;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1351
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isValidEventLocked(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    const/4 v1, 0x0

    const-string v2, "AutofillManagerServiceImpl"

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": not logging event because history is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return v1

    .line 708
    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 709
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": not logging event for session "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because tracked session is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 711
    invoke-virtual {v3}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_1
    return v1

    .line 715
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private pruneAbandonedSessionsLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 375
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    const-wide/16 v4, 0x7530

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 376
    iput-wide v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 378
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 379
    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    :cond_0
    return-void
.end method

.method private sendStateToClients(Z)V
    .locals 8
    .param p1, "resetClient"    # Z

    .line 1299
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    .line 1301
    monitor-exit v0

    return-void

    .line 1303
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 1304
    .local v1, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/autofill/IAutoFillManagerClient;>;"
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1305
    .local v2, "userClientCount":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_8

    .line 1308
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1312
    .local v3, "client":Landroid/view/autofill/IAutoFillManagerClient;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1313
    if-nez p1, :cond_2

    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isClientSessionDestroyedLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 1315
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 1313
    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 1314
    .local v5, "resetSession":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v6

    .line 1315
    .local v6, "isEnabled":Z
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1316
    const/4 v4, 0x0

    .line 1317
    .local v4, "flags":I
    if-eqz v6, :cond_3

    .line 1318
    or-int/lit8 v4, v4, 0x1

    .line 1320
    :cond_3
    if-eqz v5, :cond_4

    .line 1321
    or-int/lit8 v4, v4, 0x2

    .line 1323
    :cond_4
    if-eqz p1, :cond_5

    .line 1324
    or-int/lit8 v4, v4, 0x4

    .line 1326
    :cond_5
    :try_start_4
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_6

    .line 1327
    or-int/lit8 v4, v4, 0x8

    .line 1329
    :cond_6
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_7

    .line 1330
    or-int/lit8 v4, v4, 0x10

    .line 1332
    :cond_7
    invoke-interface {v3, v4}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1335
    .end local v4    # "flags":I
    .end local v5    # "resetSession":Z
    .end local v6    # "isEnabled":Z
    goto :goto_4

    .line 1315
    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/autofill/IAutoFillManagerClient;>;"
    .end local v2    # "userClientCount":I
    .end local p0    # "this":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .end local p1    # "resetClient":Z
    :try_start_6
    throw v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1333
    .restart local v1    # "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/autofill/IAutoFillManagerClient;>;"
    .restart local v2    # "userClientCount":I
    .restart local p0    # "this":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .restart local p1    # "resetClient":Z
    :catch_0
    move-exception v4

    .line 1307
    .end local v3    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1338
    .end local v0    # "i":I
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    :cond_8
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1339
    nop

    .line 1340
    return-void

    .line 1305
    .end local v1    # "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/autofill/IAutoFillManagerClient;>;"
    .end local v2    # "userClientCount":I
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method private whitelistForAugmentedAutofillPackages(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 1277
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v1, v1, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v1, :cond_0

    .line 1279
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "whitelisting packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "and activities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    .line 1282
    monitor-exit v0

    .line 1283
    return-void

    .line 1282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    const/16 v0, 0x8

    return v0

    .line 248
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method cancelSessionLocked(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 428
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 433
    return-void

    .line 429
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSessionLocked(): no session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void
.end method

.method destroyFinishedSessionsLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1066
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1067
    .local v0, "sessionCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1068
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 1069
    .local v2, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->isSavingLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1070
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyFinishedSessionsLocked(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillManagerServiceImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    goto :goto_1

    .line 1074
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    .line 1067
    .end local v2    # "session":Lcom/android/server/autofill/Session;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1077
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method destroyLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 659
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManagerServiceImpl"

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 663
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 664
    .local v0, "numSessions":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 665
    .local v1, "remoteFillServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/autofill/RemoteFillService;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 666
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v3

    .line 667
    .local v3, "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v3, :cond_1

    .line 668
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 665
    .end local v3    # "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 672
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 673
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 676
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 677
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-eqz v2, :cond_4

    .line 678
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 679
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 681
    :cond_4
    return-void
.end method

.method destroySessionsForAugmentedAutofillOnlyLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1058
    .local v0, "sessionCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1059
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->forceRemoveSelfIfForAugmentedAutofillOnlyLocked()V

    .line 1058
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1061
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method destroySessionsLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 1048
    return-void

    .line 1050
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    goto :goto_0

    .line 1053
    :cond_1
    return-void
.end method

.method disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "duration"    # J
    .param p4, "sessionId"    # I
    .param p5, "compatMode"    # Z

    .line 1381
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1383
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 1385
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p2

    .line 1387
    .local v3, "expiration":J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    .line 1388
    const-wide v3, 0x7fffffffffffffffL

    .line 1390
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    const-wide/32 v5, 0x7fffffff

    cmp-long v1, p2, v5

    if-lez v1, :cond_2

    .line 1392
    const v1, 0x7fffffff

    goto :goto_0

    .line 1393
    :cond_2
    long-to-int v1, p2

    :goto_0
    nop

    .line 1396
    .local v1, "intDuration":I
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x4d0

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1397
    invoke-virtual {v5, p1}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x38c

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x479

    .line 1399
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x5b0

    .line 1400
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1401
    .local v5, "log":Landroid/metrics/LogMaker;
    if-eqz p5, :cond_3

    .line 1402
    const/16 v6, 0x586

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1404
    :cond_3
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1405
    .end local v1    # "intDuration":I
    .end local v3    # "expiration":J
    .end local v5    # "log":Landroid/metrics/LogMaker;
    monitor-exit v0

    .line 1406
    return-void

    .line 1405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disableAutofillForApp(Ljava/lang/String;JIZ)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "sessionId"    # I
    .param p5, "compatMode"    # Z

    .line 1359
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1361
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    .line 1363
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 1365
    .local v1, "expiration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 1366
    const-wide v1, 0x7fffffffffffffffL

    .line 1368
    :cond_1
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p2, v3

    if-lez v3, :cond_2

    const v3, 0x7fffffff

    goto :goto_0

    :cond_2
    long-to-int v3, p2

    .line 1370
    .local v3, "intDuration":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v5, 0x4cf

    .line 1371
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1370
    invoke-static {v5, p1, v6, p4, p5}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x479

    .line 1372
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1370
    invoke-virtual {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1373
    .end local v1    # "expiration":J
    .end local v3    # "intDuration":I
    monitor-exit v0

    .line 1374
    return-void

    .line 1373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disableOwnedAutofillServicesLocked(I)V
    .locals 9
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableOwnedServices("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 441
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, p1, :cond_1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableOwnedServices(): ignored when called by UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 449
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 451
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "autoFillService":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 453
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 454
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v6, 0x46f

    .line 455
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 454
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "autofill_service"

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-static {v1, v6, v7, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 458
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    goto :goto_0

    .line 460
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableOwnedServices(): ignored because current service ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") does not match Settings ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .end local v4    # "autoFillService":Ljava/lang/String;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    nop

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 19
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, "prefix2":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "UID: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceUidLocked()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 925
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Autofill Service Info: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    const-string v6, "N/A"

    if-nez v5, :cond_0

    .line 927
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 929
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 930
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v5, v3, v2}, Landroid/service/autofill/AutofillServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 932
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Default component: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x104015f

    .line 933
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 932
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mAugmentedAutofillNamer: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v5, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v5, v5, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v7, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v5, v2, v7}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 938
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-eqz v5, :cond_1

    .line 939
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "RemoteAugmentedAutofillService: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 942
    :cond_1
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_2

    .line 943
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "RemoteAugmentedAutofillServiceInfo: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 944
    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 947
    :cond_2
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Field classification enabled: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 949
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Compat pkgs: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getCompatibilityPackagesLocked()Landroid/util/ArrayMap;

    move-result-object v5

    .line 951
    .local v5, "compatPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v5, :cond_3

    .line 952
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 954
    :cond_3
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 956
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Last prune: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    invoke-virtual {v2, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 958
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Disabled apps: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    iget-object v7, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    const-string v9, ": "

    const-string v10, ". "

    if-nez v7, :cond_4

    .line 961
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 963
    :cond_4
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 964
    .local v7, "size":I
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 965
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 966
    .local v11, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 967
    .local v12, "now":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v7, :cond_5

    .line 968
    iget-object v15, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 969
    .local v15, "packageName":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 970
    .local v16, "expiration":J
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    move/from16 v18, v7

    .end local v7    # "size":I
    .local v18, "size":I
    sub-long v7, v16, v12

    invoke-static {v7, v8, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 973
    const/16 v7, 0xa

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 967
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "expiration":J
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v18

    goto :goto_2

    .end local v18    # "size":I
    .restart local v7    # "size":I
    :cond_5
    move/from16 v18, v7

    .line 975
    .end local v7    # "size":I
    .end local v14    # "i":I
    .restart local v18    # "size":I
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 978
    .end local v11    # "builder":Ljava/lang/StringBuilder;
    .end local v12    # "now":J
    .end local v18    # "size":I
    :goto_3
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Disabled activities: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget-object v7, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    if-nez v7, :cond_6

    .line 981
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 983
    :cond_6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 984
    .restart local v7    # "size":I
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 985
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 986
    .local v8, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 987
    .local v11, "now":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v7, :cond_7

    .line 988
    iget-object v14, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    .line 989
    .local v14, "component":Landroid/content/ComponentName;
    iget-object v15, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 990
    .restart local v16    # "expiration":J
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    move-object v15, v9

    move-object/from16 v18, v10

    sub-long v9, v16, v11

    invoke-static {v9, v10, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 993
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 987
    .end local v14    # "component":Landroid/content/ComponentName;
    .end local v16    # "expiration":J
    add-int/lit8 v13, v13, 0x1

    move-object v9, v15

    move-object/from16 v10, v18

    goto :goto_4

    .line 995
    .end local v13    # "i":I
    :cond_7
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 998
    .end local v7    # "size":I
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v11    # "now":J
    :goto_5
    iget-object v7, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 999
    .restart local v7    # "size":I
    if-nez v7, :cond_8

    .line 1000
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "No sessions"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 1002
    :cond_8
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " sessions:"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v7, :cond_9

    .line 1004
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "#"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 1005
    iget-object v9, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/Session;

    invoke-virtual {v9, v3, v2}, Lcom/android/server/autofill/Session;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1003
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1009
    .end local v8    # "i":I
    :cond_9
    :goto_7
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Clients: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1010
    iget-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v8, :cond_a

    .line 1011
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 1013
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1014
    iget-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v2, v3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1017
    :goto_8
    iget-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1018
    invoke-virtual {v8}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_b

    goto :goto_a

    .line 1021
    :cond_b
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Events of last fill response:"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    iget-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v8}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 1025
    .local v8, "numEvents":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    if-ge v9, v8, :cond_d

    .line 1026
    iget-object v10, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v10}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/FillEventHistory$Event;

    .line 1027
    .local v10, "event":Landroid/service/autofill/FillEventHistory$Event;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": eventType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/service/autofill/FillEventHistory$Event;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " datasetId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v10}, Landroid/service/autofill/FillEventHistory$Event;->getDatasetId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1027
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    .end local v10    # "event":Landroid/service/autofill/FillEventHistory$Event;
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1019
    .end local v8    # "numEvents":I
    .end local v9    # "i":I
    :cond_c
    :goto_a
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "No event on last fill response"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    :cond_d
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "User data: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    if-nez v4, :cond_e

    .line 1034
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 1036
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1037
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v4, v3, v2}, Landroid/service/autofill/UserData;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1040
    :goto_b
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Field Classification strategy: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/autofill/FieldClassificationStrategy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1042
    return-void
.end method

.method finishSessionLocked(II)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 399
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 404
    .local v0, "session":Lcom/android/server/autofill/Session;
    const-string v1, "AutofillManagerServiceImpl"

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v2, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->logContextCommitted()V

    .line 413
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->showSaveLocked()Z

    move-result v2

    .line 414
    .local v2, "finished":Z
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishSessionLocked(): session finished on save? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2
    if-eqz v2, :cond_3

    .line 417
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 419
    :cond_3
    return-void

    .line 405
    .end local v2    # "finished":Z
    :cond_4
    :goto_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_5

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSessionLocked(): no session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_5
    return-void
.end method

.method getAvailableFieldClassificationAlgorithms(I)[Ljava/lang/String;
    .locals 2
    .param p1, "callingUid"    # I

    .line 1471
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1472
    :try_start_0
    const-string v1, "getFCAlgorithms()"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1473
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1475
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1475
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getCompatibilityPackagesLocked()Landroid/util/ArrayMap;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v0, :cond_0

    .line 1100
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getCompatibilityPackages()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0

    .line 1102
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDefaultFieldClassificationAlgorithm(I)Ljava/lang/String;
    .locals 2
    .param p1, "callingUid"    # I

    .line 1480
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1481
    :try_start_0
    const-string v1, "getDefaultFCAlgorithm()"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1482
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1484
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1484
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    return-object v0
.end method

.method getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;
    .locals 2
    .param p1, "callingUid"    # I

    .line 858
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v1, :cond_0

    const-string v1, "getFillEventHistory"

    .line 860
    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v0

    return-object v1

    .line 863
    :cond_0
    monitor-exit v0

    .line 864
    const/4 v0, 0x0

    return-object v0

    .line 863
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "session"    # Lcom/android/server/autofill/Session;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/Session;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/autofill/Session;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 597
    .local v0, "size":I
    const/4 v1, 0x0

    .line 598
    .local v1, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 599
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 600
    .local v3, "previousSession":Lcom/android/server/autofill/Session;
    iget v4, v3, Lcom/android/server/autofill/Session;->taskId:I

    iget v5, p1, Lcom/android/server/autofill/Session;->taskId:I

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/android/server/autofill/Session;->id:I

    iget v5, p1, Lcom/android/server/autofill/Session;->id:I

    if-eq v4, v5, :cond_1

    .line 601
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getSaveInfoFlagsLocked()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 602
    if-nez v1, :cond_0

    .line 603
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 605
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .end local v3    # "previousSession":Lcom/android/server/autofill/Session;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .locals 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1107
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-nez v0, :cond_4

    .line 1108
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, "serviceName":Ljava/lang/String;
    const-string v1, "AutofillManagerServiceImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1110
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v3, v3, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v3, :cond_0

    .line 1111
    const-string v3, "getRemoteAugmentedAutofillServiceLocked(): not set"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_0
    return-object v2

    .line 1115
    :cond_1
    iget v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 1117
    invoke-virtual {v4, v5}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isTemporary(I)Z

    move-result v4

    .line 1116
    invoke-static {v0, v3, v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName(Ljava/lang/String;IZ)Landroid/util/Pair;

    move-result-object v3

    .line 1118
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;>;"
    if-nez v3, :cond_2

    return-object v2

    .line 1120
    :cond_2
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ServiceInfo;

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 1121
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 1122
    .local v2, "componentName":Landroid/content/ComponentName;
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_3

    .line 1123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRemoteAugmentedAutofillServiceLocked(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_3
    new-instance v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    new-instance v8, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    invoke-direct {v8, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    .line 1138
    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerService;->isInstantServiceAllowed()Z

    move-result v9

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v10, v4, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    iget v11, v4, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    iget v12, v4, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    move-object v4, v1

    move-object v6, v2

    invoke-direct/range {v4 .. v12}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;ZZII)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1143
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;>;"
    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-object v0
.end method

.method getSupportedSmartSuggestionModesLocked()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getSupportedSmartSuggestionModesLocked()I

    move-result v0

    return v0
.end method

.method getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->getUrlBarResourceIds(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserData()Landroid/service/autofill/UserData;
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    monitor-exit v0

    return-object v1

    .line 871
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserData(I)Landroid/service/autofill/UserData;
    .locals 2
    .param p1, "callingUid"    # I

    .line 876
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 877
    :try_start_0
    const-string v1, "getUserData"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    monitor-exit v0

    return-object v1

    .line 880
    :cond_0
    monitor-exit v0

    .line 881
    const/4 v0, 0x0

    return-object v0

    .line 880
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 646
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 649
    :cond_0
    return-void
.end method

.method handleSessionSave(Lcom/android/server/autofill/Session;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/autofill/Session;

    .line 613
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 615
    const-string v1, "AutofillManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSessionSave(): already gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    monitor-exit v0

    return-void

    .line 619
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->callSaveLocked()V

    .line 620
    monitor-exit v0

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAugmentedAutofillServiceForUserLocked(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .line 1189
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFieldClassificationEnabled(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .line 1450
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1451
    :try_start_0
    const-string v1, "isFieldClassificationEnabled"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1452
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1454
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isFieldClassificationEnabledLocked()Z
    .locals 4

    .line 1460
    nop

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 1460
    const/4 v2, 0x1

    const-string v3, "autofill_field_classification"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method listSessionsLocked(Ljava/util/ArrayList;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1081
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1082
    .local v0, "numSessions":I
    if-gtz v0, :cond_0

    return-void

    .line 1084
    :cond_0
    const-string v1, "%d:%s:%s"

    .line 1085
    .local v1, "fmt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1086
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1087
    .local v3, "id":I
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v4, :cond_1

    .line 1088
    const-string/jumbo v4, "no_svc"

    goto :goto_1

    .line 1089
    :cond_1
    invoke-virtual {v4}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    nop

    .line 1090
    .local v4, "service":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_2

    .line 1091
    const-string/jumbo v5, "no_aug"

    goto :goto_2

    .line 1092
    :cond_2
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    nop

    .line 1093
    .local v5, "augmentedService":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const-string v7, "%d:%s:%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    .end local v3    # "id":I
    .end local v4    # "service":Ljava/lang/String;
    .end local v5    # "augmentedService":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1095
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V
    .locals 13
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;
    .param p9, "appComponentName"    # Landroid/content/ComponentName;
    .param p10, "compatMode"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/content/ComponentName;",
            "Z)V"
        }
    .end annotation

    .line 783
    .local p3, "selectedDatasets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p8, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V

    .line 786
    return-void
.end method

.method logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V
    .locals 20
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;
    .param p11, "appComponentName"    # Landroid/content/ComponentName;
    .param p12, "compatMode"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;",
            "Landroid/content/ComponentName;",
            "Z)V"
        }
    .end annotation

    .line 799
    .local p3, "selectedDatasets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p8, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local p9, "detectedFieldIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p10, "detectedFieldClassificationsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move/from16 v4, p12

    const-string/jumbo v5, "logDatasetNotSelected()"

    invoke-direct {v0, v5, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 800
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_0

    .line 801
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logContextCommitted() with FieldClassification: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", selectedDatasets="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", ignoredDatasetIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p4

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", changedAutofillIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", changedDatasetIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p6

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", manuallyFilledFieldIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", detectedFieldIds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", detectedFieldClassifications="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", appComponentName="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual/range {p11 .. p11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", compatMode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 801
    const-string v7, "AutofillManagerServiceImpl"

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    :cond_0
    move-object/from16 v6, p3

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    move-object/from16 v13, p6

    move-object/from16 v12, p7

    .line 812
    :goto_0
    const/4 v5, 0x0

    .line 813
    .local v5, "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    const/4 v7, 0x0

    .line 814
    .local v7, "detectedFieldClassifications":[Landroid/service/autofill/FieldClassification;
    if-eqz v2, :cond_3

    .line 815
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Landroid/view/autofill/AutofillId;

    .line 816
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 817
    nop

    .line 818
    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Landroid/service/autofill/FieldClassification;

    .line 819
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 821
    array-length v8, v5

    .line 822
    .local v8, "numberFields":I
    const/4 v9, 0x0

    .line 823
    .local v9, "totalSize":I
    const/4 v10, 0x0

    .line 824
    .local v10, "totalScore":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_2

    .line 825
    aget-object v16, v7, v11

    .line 826
    .local v16, "fc":Landroid/service/autofill/FieldClassification;
    invoke-virtual/range {v16 .. v16}, Landroid/service/autofill/FieldClassification;->getMatches()Ljava/util/List;

    move-result-object v2

    .line 827
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FieldClassification$Match;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 828
    .local v3, "size":I
    add-int/2addr v9, v3

    .line 829
    const/16 v17, 0x0

    move/from16 v19, v17

    move/from16 v17, v10

    move/from16 v10, v19

    .local v10, "j":I
    .local v17, "totalScore":F
    :goto_2
    if-ge v10, v3, :cond_1

    .line 830
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/service/autofill/FieldClassification$Match;

    invoke-virtual/range {v18 .. v18}, Landroid/service/autofill/FieldClassification$Match;->getScore()F

    move-result v18

    add-float v17, v17, v18

    .line 829
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 824
    .end local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FieldClassification$Match;>;"
    .end local v3    # "size":I
    .end local v10    # "j":I
    .end local v16    # "fc":Landroid/service/autofill/FieldClassification;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move/from16 v10, v17

    goto :goto_1

    .line 834
    .end local v11    # "i":I
    .end local v17    # "totalScore":F
    .local v10, "totalScore":F
    :cond_2
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v10

    int-to-float v3, v9

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 835
    .local v2, "averageScore":I
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v11, 0x4f9

    .line 837
    move-object/from16 v16, v5

    .end local v5    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .local v16, "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 836
    move/from16 v17, v9

    move-object/from16 v9, p11

    .end local v9    # "totalSize":I
    .local v17, "totalSize":I
    invoke-static {v11, v9, v5, v1, v4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 838
    invoke-virtual {v5, v8}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v11, 0x4fa

    .line 840
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 839
    invoke-virtual {v5, v11, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 835
    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v1, v7

    move-object/from16 v5, v16

    goto :goto_3

    .line 814
    .end local v2    # "averageScore":I
    .end local v8    # "numberFields":I
    .end local v10    # "totalScore":F
    .end local v16    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .end local v17    # "totalSize":I
    .restart local v5    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    :cond_3
    move-object/from16 v9, p11

    move-object v1, v7

    .line 842
    .end local v7    # "detectedFieldClassifications":[Landroid/service/autofill/FieldClassification;
    .local v1, "detectedFieldClassifications":[Landroid/service/autofill/FieldClassification;
    :goto_3
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v3, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v8, 0x4

    const/4 v10, 0x0

    move-object v7, v3

    move-object v9, v10

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, v5

    move-object/from16 v18, v1

    invoke-direct/range {v7 .. v18}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v2, v3}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    goto :goto_4

    .line 799
    .end local v1    # "detectedFieldClassifications":[Landroid/service/autofill/FieldClassification;
    .end local v5    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    :cond_4
    move-object/from16 v6, p3

    .line 848
    :goto_4
    return-void
.end method

.method logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "selectedDataset"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "clientState"    # Landroid/os/Bundle;

    .line 736
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 737
    :try_start_0
    const-string/jumbo v0, "logDatasetAuthenticationSelected()"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p2

    :try_start_1
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 742
    :cond_0
    monitor-exit v2

    .line 743
    return-void

    .line 742
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v3, p2

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "selectedDataset"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "clientState"    # Landroid/os/Bundle;

    .line 762
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 763
    :try_start_0
    const-string/jumbo v0, "logDatasetSelected()"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p2

    :try_start_1
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 768
    :cond_0
    monitor-exit v2

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v3, p2

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method logSaveShown(ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    .line 749
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 750
    :try_start_0
    const-string/jumbo v0, "logSaveShown()"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p1

    :try_start_1
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v7, p2

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 754
    :cond_0
    monitor-exit v2

    .line 755
    return-void

    .line 754
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v3, p1

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 217
    new-instance v0, Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-direct {v0, v1, p1, v2}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 218
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method onBackKeyPressed()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 190
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    .line 193
    :cond_0
    return-void
.end method

.method onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 624
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPendingSaveUi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 627
    .local v1, "sessionCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 628
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 629
    .local v3, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v3, p2}, Lcom/android/server/autofill/Session;->isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 630
    invoke-virtual {v3, p1, p2}, Lcom/android/server/autofill/Session;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 631
    monitor-exit v0

    return-void

    .line 627
    .end local v3    # "session":Lcom/android/server/autofill/Session;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 634
    .end local v1    # "sessionCount":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_3

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No pending Save UI for token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/autofill/AutofillManager;

    .line 637
    const-string v2, "PENDING_UI_OPERATION_"

    invoke-static {v1, v2, p1}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    const-string v1, "AutofillManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_3
    return-void

    .line 634
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method removeClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)V
    .locals 1
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 256
    :cond_0
    return-void
.end method

.method removeSessionLocked(I)V
    .locals 1
    .param p1, "sessionId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 586
    return-void
.end method

.method resetAugmentedAutofillWhitelistLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1290
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 1291
    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "resetting augmented autofill whitelist"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->resetWhitelist(I)V

    .line 1294
    return-void
.end method

.method resetExtServiceLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 653
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "reset autofill service."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->reset()V

    .line 655
    return-void
.end method

.method resetLastResponse()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 699
    monitor-exit v0

    .line 700
    return-void

    .line 699
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .param p4, "appCallback"    # Landroid/os/IBinder;

    .line 547
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 549
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/android/server/autofill/Session;->switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 553
    const/4 v1, 0x1

    return v1

    .line 550
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method setAugmentedAutofillWhitelistLocked(Ljava/util/List;Ljava/util/List;I)Z
    .locals 4
    .param p3, "callingUid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;I)Z"
        }
    .end annotation

    .line 1202
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string/jumbo v0, "setAugmentedAutofillWhitelistLocked"

    invoke-direct {p0, v0, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByAugmentedAutofillServiceLocked(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    const/4 v0, 0x0

    return v0

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    const-string v1, "AutofillManagerServiceImpl"

    if-eqz v0, :cond_1

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAugmentedAutofillWhitelistLocked(packages="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", activities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->whitelistForAugmentedAutofillPackages(Ljava/util/List;Ljava/util/List;)V

    .line 1212
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    .line 1213
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1214
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .local v0, "serviceName":Ljava/lang/String;
    goto :goto_0

    .line 1216
    .end local v0    # "serviceName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "setAugmentedAutofillWhitelistLocked(): no service"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const-string v0, "N/A"

    .line 1220
    .restart local v0    # "serviceName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6b9

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0x38c

    .line 1221
    invoke-virtual {v1, v2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1222
    .local v1, "log":Landroid/metrics/LogMaker;
    if-eqz p1, :cond_3

    .line 1223
    const/16 v2, 0x6ba

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1225
    :cond_3
    if-eqz p2, :cond_4

    .line 1226
    const/16 v2, 0x6bb

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1228
    :cond_4
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1230
    const/4 v2, 0x1

    return v2
.end method

.method setAuthenticationResultLocked(Landroid/os/Bundle;III)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "sessionId"    # I
    .param p3, "authenticationId"    # I
    .param p4, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 264
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-ne p4, v1, :cond_1

    .line 265
    invoke-virtual {v0, p1, p3}, Lcom/android/server/autofill/Session;->setAuthenticationResultLocked(Landroid/os/Bundle;I)V

    .line 267
    :cond_1
    return-void
.end method

.method setAuthenticationSelected(ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    .line 722
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 723
    :try_start_0
    const-string/jumbo v0, "setAuthenticationSelected()"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p1

    :try_start_1
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v7, p2

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 728
    :cond_0
    monitor-exit v2

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v3, p1

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setAutofillFailureLocked(IILjava/util/List;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 390
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/Session;->setAutofillFailureLocked(Ljava/util/List;)V

    .line 395
    return-void

    .line 391
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutofillFailure(): no session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method setHasCallback(IIZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .param p3, "hasIt"    # Z

    .line 270
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 274
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-ne p2, v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/Session;->setHasCallbackLocked(Z)V

    .line 277
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 279
    :cond_1
    :goto_0
    return-void
.end method

.method setLastResponse(ILandroid/service/autofill/FillResponse;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "response"    # Landroid/service/autofill/FillResponse;

    .line 688
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_0
    new-instance v1, Landroid/service/autofill/FillEventHistory;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 690
    monitor-exit v0

    .line 691
    return-void

    .line 690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setUserData(ILandroid/service/autofill/UserData;)V
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "userData"    # Landroid/service/autofill/UserData;

    .line 886
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_0
    const-string/jumbo v1, "setUserData"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 888
    monitor-exit v0

    return-void

    .line 890
    :cond_0
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 892
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 895
    .local v1, "numberFields":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x4f8

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 896
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x392

    .line 897
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 895
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 898
    .end local v1    # "numberFields":I
    monitor-exit v0

    .line 899
    return-void

    .line 898
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startSessionLocked(Landroid/os/IBinder;IILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)J
    .locals 17
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I
    .param p3, "uid"    # I
    .param p4, "appCallbackToken"    # Landroid/os/IBinder;
    .param p5, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p6, "virtualBounds"    # Landroid/graphics/Rect;
    .param p7, "value"    # Landroid/view/autofill/AutofillValue;
    .param p8, "hasCallback"    # Z
    .param p9, "componentName"    # Landroid/content/ComponentName;
    .param p10, "compatMode"    # Z
    .param p11, "bindInstantServiceAllowed"    # Z
    .param p12, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 296
    move-object/from16 v12, p0

    move-object/from16 v13, p9

    move/from16 v14, p12

    and-int/lit8 v0, v14, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 298
    .local v1, "forAugmentedAutofillOnly":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 299
    const-wide/16 v2, 0x0

    return-wide v2

    .line 302
    :cond_1
    const/4 v0, 0x0

    const-wide/32 v15, 0x7fffffff

    const-string v2, "AutofillManagerServiceImpl"

    if-nez v1, :cond_5

    invoke-direct {v12, v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 305
    invoke-virtual {v12, v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v3

    const-string/jumbo v4, "startSession("

    if-eqz v3, :cond_3

    .line 306
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): disabled by service but whitelisted for augmented autofill"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    const/4 v1, 0x1

    move v11, v1

    goto :goto_2

    .line 313
    :cond_3
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_4

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): ignored because disabled by service and not whitelisted for augmented autofill"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_4
    nop

    .line 318
    invoke-static/range {p4 .. p4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v3

    .line 320
    .local v3, "client":Landroid/view/autofill/IAutoFillManagerClient;
    const/4 v4, 0x4

    :try_start_0
    invoke-interface {v3, v4, v0}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    goto :goto_1

    .line 322
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " that it\'s disabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-wide v15

    .line 331
    .end local v3    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    :cond_5
    move v11, v1

    .end local v1    # "forAugmentedAutofillOnly":Z
    .local v11, "forAugmentedAutofillOnly":Z
    :goto_2
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_6

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSession(): token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", forAugmentedAutofillOnly="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 331
    :cond_6
    move-object/from16 v10, p1

    .line 337
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->pruneAbandonedSessionsLocked()V

    .line 339
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move v10, v11

    move v0, v11

    .end local v11    # "forAugmentedAutofillOnly":Z
    .local v0, "forAugmentedAutofillOnly":Z
    move/from16 v11, p12

    invoke-direct/range {v1 .. v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->createSessionByTokenLocked(Landroid/os/IBinder;IILandroid/os/IBinder;ZLandroid/content/ComponentName;ZZZI)Lcom/android/server/autofill/Session;

    move-result-object v7

    .line 342
    .local v7, "newSession":Lcom/android/server/autofill/Session;
    if-nez v7, :cond_7

    .line 343
    return-wide v15

    .line 347
    :cond_7
    iget-object v1, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    :goto_4
    move-object v8, v1

    .line 348
    .local v8, "servicePackageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p8

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " aa="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "historyItem":Ljava/lang/String;
    iget-object v1, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    .line 355
    const/4 v5, 0x1

    move-object v1, v7

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v16, v6

    .end local v6    # "historyItem":Ljava/lang/String;
    .local v16, "historyItem":Ljava/lang/String;
    move/from16 v6, p12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 357
    if-eqz v0, :cond_9

    .line 360
    const-wide v1, 0x100000000L

    .line 362
    .local v1, "extraFlags":J
    const-wide v3, 0x100000000L

    iget v5, v7, Lcom/android/server/autofill/Session;->id:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    .line 363
    .local v3, "result":J
    return-wide v3

    .line 365
    .end local v1    # "extraFlags":J
    .end local v3    # "result":J
    :cond_9
    iget v1, v7, Lcom/android/server/autofill/Session;->id:I

    int-to-long v1, v1

    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutofillManagerServiceImpl: [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v1, :cond_0

    .line 1492
    invoke-virtual {v1}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1490
    return-object v0
.end method

.method protected updateLocked(Z)Z
    .locals 4
    .param p1, "disabled"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    .line 199
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 200
    .local v0, "enabledChanged":Z
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 203
    .local v1, "sessionCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 205
    .local v3, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 203
    .end local v3    # "session":Lcom/android/server/autofill/Session;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 208
    .end local v1    # "sessionCount":I
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 211
    return v0
.end method

.method updateRemoteAugmentedAutofillService()V
    .locals 5

    .line 1151
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-eqz v1, :cond_1

    .line 1153
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 1154
    const-string v1, "AutofillManagerServiceImpl"

    const-string/jumbo v2, "updateRemoteAugmentedAutofillService(): destroying old remote service"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsForAugmentedAutofillOnlyLocked()V

    .line 1158
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->destroy()V

    .line 1159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1160
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetAugmentedAutofillWhitelistLocked()V

    .line 1164
    :cond_1
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    move-result v1

    .line 1165
    .local v1, "available":Z
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2

    const-string v2, "AutofillManagerServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRemoteAugmentedAutofillService(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_2
    if-eqz v1, :cond_3

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1170
    .end local v1    # "available":Z
    :cond_3
    monitor-exit v0

    .line 1171
    return-void

    .line 1170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateSessionLocked(IILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)Z
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .param p3, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p4, "virtualBounds"    # Landroid/graphics/Rect;
    .param p5, "value"    # Landroid/view/autofill/AutofillValue;
    .param p6, "action"    # I
    .param p7, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 564
    .local v0, "session":Lcom/android/server/autofill/Session;
    const/4 v7, 0x0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    move-object v1, v0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 580
    return v7

    .line 565
    :cond_1
    :goto_0
    and-int/lit8 v1, p7, 0x1

    const-string v2, "AutofillManagerServiceImpl"

    if-eqz v1, :cond_3

    .line 566
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restarting session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to manual request on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 572
    :cond_3
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_4

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSessionLocked(): session gone for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_4
    return v7
.end method
