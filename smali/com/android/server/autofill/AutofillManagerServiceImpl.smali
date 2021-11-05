.class final Lcom/android/server/autofill/AutofillManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AutofillManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;,
        Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;
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
.field private mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

.field private final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

.field private mClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/autofill/IAutoFillManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field private final mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

.field private mEventHistory:Landroid/service/autofill/FillEventHistory;

.field private final mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/service/autofill/AutofillServiceInfo;

.field private final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private mLastPrune:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field private mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field private final mSessions:Landroid/util/SparseArray;
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

.field private final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;ZLcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;)V
    .locals 4
    .param p1, "master"    # Lcom/android/server/autofill/AutofillManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "uiLatencyHistory"    # Landroid/util/LocalLog;
    .param p4, "wtfHistory"    # Landroid/util/LocalLog;
    .param p5, "userId"    # I
    .param p6, "ui"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p7, "autofillCompatState"    # Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    .param p8, "disabled"    # Z
    .param p9, "disableCache"    # Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 181
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 108
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 183
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 184
    iput-object p4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    .line 185
    iput-object p6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 186
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 187
    iput-object p7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 188
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 189
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 191
    iput-object p9, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 192
    invoke-virtual {p0, p8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateLocked(Z)Z

    .line 193
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 98
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 98
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;)Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 98
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 98
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 98
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 98
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private assertCallerLocked(Landroid/content/ComponentName;Z)V
    .locals 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "compatMode"    # Z

    .line 527
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 529
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 532
    .local v2, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .local v3, "packageUid":I
    nop

    .line 536
    if-eq v2, v3, :cond_3

    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    .line 537
    invoke-virtual {v4, v2, v0}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 538
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 539
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

    .line 540
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

    .line 544
    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x3b4

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 545
    invoke-virtual {v6, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x38c

    .line 546
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x3b5

    .line 548
    if-nez p1, :cond_1

    const-string/jumbo v8, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    .line 547
    :goto_1
    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 549
    .local v6, "log":Landroid/metrics/LogMaker;
    if-eqz p2, :cond_2

    .line 550
    const/16 v7, 0x586

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 552
    :cond_2
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 554
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

    .line 556
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "callingPackage":Ljava/lang/String;
    .end local v6    # "log":Landroid/metrics/LogMaker;
    :cond_3
    return-void

    .line 533
    .end local v3    # "packageUid":I
    :catch_0
    move-exception v3

    .line 534
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
    .locals 25
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

    .line 496
    move-object/from16 v12, p0

    const/4 v0, 0x0

    .line 498
    .local v0, "tries":I
    :goto_0
    add-int/lit8 v11, v0, 0x1

    .line 499
    .end local v0    # "tries":I
    .local v11, "tries":I
    const/16 v0, 0x800

    const/4 v1, 0x0

    if-le v11, v0, :cond_0

    .line 500
    const-string v0, "AutofillManagerServiceImpl"

    const-string v2, "Cannot create session in 2048 tries"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-object v1

    .line 504
    :cond_0
    sget-object v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 505
    .local v10, "sessionId":I
    if-eqz v10, :cond_3

    const v0, 0x7fffffff

    if-eq v10, v0, :cond_3

    iget-object v0, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 506
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 508
    move-object/from16 v9, p6

    move/from16 v8, p7

    invoke-direct {v12, v9, v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->assertCallerLocked(Landroid/content/ComponentName;Z)V

    .line 511
    iget-object v0, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v0, :cond_1

    move-object v15, v1

    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    move-object v15, v0

    :goto_1
    nop

    .line 513
    .local v15, "serviceComponentName":Landroid/content/ComponentName;
    new-instance v22, Lcom/android/server/autofill/Session;

    move-object/from16 v0, v22

    iget-object v2, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    iget v5, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    iget-object v6, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    iget-object v13, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUiLatencyHistory:Landroid/util/LocalLog;

    iget-object v14, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mWtfHistory:Landroid/util/LocalLog;

    iget-object v1, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move v7, v10

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v23, v10

    .end local v10    # "sessionId":I
    .local v23, "sessionId":I
    move-object/from16 v10, p1

    move/from16 v24, v11

    .end local v11    # "tries":I
    .local v24, "tries":I
    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    invoke-direct/range {v0 .. v21}, Lcom/android/server/autofill/Session;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;)V

    .line 518
    .local v0, "newSession":Lcom/android/server/autofill/Session;
    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    return-object v0

    .line 506
    .end local v0    # "newSession":Lcom/android/server/autofill/Session;
    .end local v15    # "serviceComponentName":Landroid/content/ComponentName;
    .end local v23    # "sessionId":I
    .end local v24    # "tries":I
    .restart local v10    # "sessionId":I
    .restart local v11    # "tries":I
    :cond_2
    move/from16 v23, v10

    move/from16 v24, v11

    move-object v1, v12

    .end local v10    # "sessionId":I
    .end local v11    # "tries":I
    .restart local v23    # "sessionId":I
    .restart local v24    # "tries":I
    goto :goto_2

    .line 505
    .end local v23    # "sessionId":I
    .end local v24    # "tries":I
    .restart local v10    # "sessionId":I
    .restart local v11    # "tries":I
    :cond_3
    move/from16 v23, v10

    move/from16 v24, v11

    move-object v1, v12

    .line 498
    .end local v10    # "sessionId":I
    .end local v11    # "tries":I
    .restart local v24    # "tries":I
    :goto_2
    move-object v12, v1

    move/from16 v0, v24

    goto/16 :goto_0
.end method

.method private getAugmentedAutofillServiceUidLocked()I
    .locals 2

    .line 1352
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 1354
    const-string v0, "AutofillManagerServiceImpl"

    const-string v1, "getAugmentedAutofillServiceUid(): no mRemoteAugmentedAutofillServiceInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1359
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method private isAugmentedAutofillServiceAvailableLocked()Z
    .locals 3

    .line 1270
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAugmentedAutofillService(): setupCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isSetupCompletedLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isDisabledByUserRestrictionsLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", augmentedService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 1275
    invoke-virtual {v1, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1271
    const-string v1, "AutofillManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
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

    .line 1278
    invoke-virtual {v0, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1281
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1279
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isAutofillDisabledLocked(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1504
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->isAutofillDisabledLocked(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method private isCalledByAugmentedAutofillServiceLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 1334
    .local v0, "service":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    const/4 v1, 0x0

    const-string v2, "() called by UID "

    const-string v3, "AutofillManagerServiceImpl"

    if-nez v0, :cond_0

    .line 1335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but there is no augmented autofill service defined for user "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1335
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return v1

    .line 1341
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAugmentedAutofillServiceUidLocked()I

    move-result v4

    if-eq v4, p2, :cond_1

    .line 1342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but service UID is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAugmentedAutofillServiceUidLocked()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1342
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    return v1

    .line 1347
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isCalledByServiceLocked(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 993
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceUidLocked()I

    move-result v0

    .line 994
    .local v0, "serviceUid":I
    if-eq v0, p2, :cond_0

    .line 995
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

    .line 997
    const/4 v1, 0x0

    return v1

    .line 999
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private isClientSessionDestroyedLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z
    .locals 4
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;

    .line 1440
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1441
    .local v0, "sessionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1442
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 1443
    .local v2, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1444
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->isDestroyed()Z

    move-result v3

    return v3

    .line 1441
    .end local v2    # "session":Lcom/android/server/autofill/Session;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1447
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isValidEventLocked(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "sessionId"    # I

    .line 738
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    const/4 v1, 0x0

    const-string v2, "AutofillManagerServiceImpl"

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": not logging event because history is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v1

    .line 742
    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 743
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": not logging event for session "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because tracked session is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 745
    invoke-virtual {v3}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_1
    return v1

    .line 749
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private pruneAbandonedSessionsLocked()V
    .locals 6

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 396
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    const-wide/16 v4, 0x7530

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 397
    iput-wide v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    .line 399
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 400
    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 403
    :cond_0
    return-void
.end method

.method private sendStateToClients(Z)V
    .locals 8
    .param p1, "resetClient"    # Z

    .line 1395
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1396
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    .line 1397
    monitor-exit v0

    return-void

    .line 1399
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 1400
    .local v1, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/autofill/IAutoFillManagerClient;>;"
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1401
    .local v2, "userClientCount":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_8

    .line 1404
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1408
    .local v3, "client":Landroid/view/autofill/IAutoFillManagerClient;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1409
    if-nez p1, :cond_2

    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isClientSessionDestroyedLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 1411
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 1409
    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 1410
    .local v5, "resetSession":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v6

    .line 1411
    .local v6, "isEnabled":Z
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1412
    const/4 v4, 0x0

    .line 1413
    .local v4, "flags":I
    if-eqz v6, :cond_3

    .line 1414
    or-int/lit8 v4, v4, 0x1

    .line 1416
    :cond_3
    if-eqz v5, :cond_4

    .line 1417
    or-int/lit8 v4, v4, 0x2

    .line 1419
    :cond_4
    if-eqz p1, :cond_5

    .line 1420
    or-int/lit8 v4, v4, 0x4

    .line 1422
    :cond_5
    :try_start_4
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_6

    .line 1423
    or-int/lit8 v4, v4, 0x8

    .line 1425
    :cond_6
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_7

    .line 1426
    or-int/lit8 v4, v4, 0x10

    .line 1428
    :cond_7
    invoke-interface {v3, v4}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1431
    .end local v4    # "flags":I
    .end local v5    # "resetSession":Z
    .end local v6    # "isEnabled":Z
    goto :goto_4

    .line 1411
    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "i":I
    .end local v1    # "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/autofill/IAutoFillManagerClient;>;"
    .end local v2    # "userClientCount":I
    .end local v3    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .end local p0    # "this":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .end local p1    # "resetClient":Z
    :try_start_6
    throw v5
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1429
    .restart local v0    # "i":I
    .restart local v1    # "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/autofill/IAutoFillManagerClient;>;"
    .restart local v2    # "userClientCount":I
    .restart local v3    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local p0    # "this":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .restart local p1    # "resetClient":Z
    :catch_0
    move-exception v4

    .line 1403
    .end local v3    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1434
    .end local v0    # "i":I
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1435
    throw v0

    .line 1434
    :cond_8
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1435
    nop

    .line 1436
    return-void

    .line 1401
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

.method private updateRemoteInlineSuggestionRenderServiceLocked()V
    .locals 2

    .line 1548
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    if-eqz v0, :cond_1

    .line 1549
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 1550
    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "updateRemoteInlineSuggestionRenderService(): destroying old remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 1556
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 1557
    return-void
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

    .line 1373
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v1, v1, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v1, :cond_0

    .line 1375
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

    .line 1377
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    .line 1378
    monitor-exit v0

    .line 1379
    return-void

    .line 1378
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

    .line 255
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 260
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 263
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    const/16 v0, 0x8

    return v0

    .line 269
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method cancelSessionLocked(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I

    .line 444
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 449
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 454
    return-void

    .line 450
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

    .line 451
    return-void
.end method

.method destroyFinishedSessionsLocked()V
    .locals 5

    .line 1120
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1121
    .local v0, "sessionCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1122
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    .line 1123
    .local v2, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->isSavingLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1124
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

    .line 1125
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    goto :goto_1

    .line 1128
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    .line 1121
    .end local v2    # "session":Lcom/android/server/autofill/Session;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1131
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method destroyLocked()V
    .locals 4

    .line 680
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManagerServiceImpl"

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 684
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 685
    .local v0, "numSessions":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 686
    .local v1, "remoteFillServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/autofill/RemoteFillService;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 687
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v3

    .line 688
    .local v3, "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v3, :cond_1

    .line 689
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 686
    .end local v3    # "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 693
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 694
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 697
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 698
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-eqz v2, :cond_4

    .line 699
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 700
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 702
    :cond_4
    return-void
.end method

.method destroySessionsForAugmentedAutofillOnlyLocked()V
    .locals 3

    .line 1111
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1112
    .local v0, "sessionCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1113
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->forceRemoveSelfIfForAugmentedAutofillOnlyLocked()V

    .line 1112
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1115
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method destroySessionsLocked()V
    .locals 3

    .line 1100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 1102
    return-void

    .line 1104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    goto :goto_0

    .line 1107
    :cond_1
    return-void
.end method

.method disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "duration"    # J
    .param p4, "sessionId"    # I
    .param p5, "compatMode"    # Z

    .line 1475
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1476
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 1478
    .local v1, "expiration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 1479
    const-wide v1, 0x7fffffffffffffffL

    .line 1481
    :cond_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    iget v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->addDisabledActivityLocked(ILandroid/content/ComponentName;J)V

    .line 1482
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p2, v3

    if-lez v3, :cond_1

    .line 1483
    const v3, 0x7fffffff

    goto :goto_0

    .line 1484
    :cond_1
    long-to-int v3, p2

    :goto_0
    nop

    .line 1487
    .local v3, "intDuration":I
    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x4d0

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1488
    invoke-virtual {v4, p1}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x38c

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x479

    .line 1490
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x5b0

    .line 1491
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 1492
    .local v4, "log":Landroid/metrics/LogMaker;
    if-eqz p5, :cond_2

    .line 1493
    const/16 v5, 0x586

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1495
    :cond_2
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1496
    .end local v1    # "expiration":J
    .end local v3    # "intDuration":I
    .end local v4    # "log":Landroid/metrics/LogMaker;
    monitor-exit v0

    .line 1497
    return-void

    .line 1496
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

    .line 1455
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1456
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 1458
    .local v1, "expiration":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 1459
    const-wide v1, 0x7fffffffffffffffL

    .line 1461
    :cond_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    iget v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v3, v4, p1, v1, v2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->addDisabledAppLocked(ILjava/lang/String;J)V

    .line 1463
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, p2, v3

    if-lez v3, :cond_1

    const v3, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v3, p2

    .line 1464
    .local v3, "intDuration":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v5, 0x4cf

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1464
    invoke-static {v5, p1, v6, p4, p5}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x479

    .line 1466
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 1464
    invoke-virtual {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1467
    .end local v1    # "expiration":J
    .end local v3    # "intDuration":I
    monitor-exit v0

    .line 1468
    return-void

    .line 1467
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

    .line 458
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

    .line 459
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 462
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, p1, :cond_1

    .line 463
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

    .line 466
    return-void

    .line 470
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 472
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "autoFillService":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 474
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 475
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v6, 0x46f

    .line 476
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 475
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "autofill_service"

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-static {v1, v6, v7, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 479
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    goto :goto_0

    .line 481
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

    .line 485
    .end local v4    # "autoFillService":Ljava/lang/String;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    throw v1
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1010
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "UID: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceUidLocked()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1015
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Autofill Service Info: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    const-string v3, "N/A"

    if-nez v2, :cond_0

    .line 1017
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1020
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {v2, v0, p2}, Landroid/service/autofill/AutofillServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1022
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Default component: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x10401ff

    .line 1023
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1022
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAugmentedAutofillNamer: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v2, v2, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v2, p2, v4}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1028
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-eqz v2, :cond_1

    .line 1029
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "RemoteAugmentedAutofillService: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1032
    :cond_1
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_2

    .line 1033
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "RemoteAugmentedAutofillServiceInfo: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1037
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Field classification enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1039
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Compat pkgs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getCompatibilityPackagesLocked()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1041
    .local v2, "compatPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v2, :cond_3

    .line 1042
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1044
    :cond_3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1046
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Inline Suggestions Enabled: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isInlineSuggestionsEnabled()Z

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 1048
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Last prune: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLastPrune:J

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 1050
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mDisabledInfoCache:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    iget v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->dump(ILjava/lang/String;Ljava/io/PrintWriter;)V

    .line 1052
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1053
    .local v4, "size":I
    if-nez v4, :cond_4

    .line 1054
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "No sessions"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1056
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " sessions:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_5

    .line 1058
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "#"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1059
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/Session;

    invoke-virtual {v6, v0, p2}, Lcom/android/server/autofill/Session;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1057
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1063
    .end local v5    # "i":I
    :cond_5
    :goto_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Clients: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-nez v5, :cond_6

    .line 1065
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1067
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1068
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p2, v0}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1071
    :goto_4
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1072
    invoke-virtual {v5}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_6

    .line 1075
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Events of last fill response:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v5}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1079
    .local v5, "numEvents":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v6, v5, :cond_9

    .line 1080
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v7}, Landroid/service/autofill/FillEventHistory;->getEvents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/FillEventHistory$Event;

    .line 1081
    .local v7, "event":Landroid/service/autofill/FillEventHistory$Event;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": eventType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/service/autofill/FillEventHistory$Event;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " datasetId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-virtual {v7}, Landroid/service/autofill/FillEventHistory$Event;->getDatasetId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1081
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    .end local v7    # "event":Landroid/service/autofill/FillEventHistory$Event;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1073
    .end local v5    # "numEvents":I
    .end local v6    # "i":I
    :cond_8
    :goto_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "No event on last fill response"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User data: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    if-nez v1, :cond_a

    .line 1088
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 1090
    :cond_a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1091
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1, v0, p2}, Landroid/service/autofill/UserData;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1094
    :goto_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Field Classification strategy: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/autofill/FieldClassificationStrategy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1096
    return-void
.end method

.method finishSessionLocked(II)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I

    .line 420
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 425
    .local v0, "session":Lcom/android/server/autofill/Session;
    const-string v1, "AutofillManagerServiceImpl"

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v2, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->logContextCommitted()V

    .line 434
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->showSaveLocked()Z

    move-result v2

    .line 435
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

    .line 437
    :cond_2
    if-eqz v2, :cond_3

    .line 438
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 440
    :cond_3
    return-void

    .line 426
    .end local v2    # "finished":Z
    :cond_4
    :goto_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_5

    .line 427
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

    .line 429
    :cond_5
    return-void
.end method

.method getAvailableFieldClassificationAlgorithms(I)[Ljava/lang/String;
    .locals 2
    .param p1, "callingUid"    # I

    .line 1530
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1531
    :try_start_0
    const-string v1, "getFCAlgorithms()"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1532
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1534
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1534
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getCompatibilityPackages()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0

    .line 1156
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDefaultFieldClassificationAlgorithm(I)Ljava/lang/String;
    .locals 2
    .param p1, "callingUid"    # I

    .line 1539
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1540
    :try_start_0
    const-string v1, "getDefaultFCAlgorithm()"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1541
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 1543
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1543
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

    .line 1526
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    return-object v0
.end method

.method getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;
    .locals 2
    .param p1, "callingUid"    # I

    .line 944
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v1, :cond_0

    const-string v1, "getFillEventHistory"

    .line 946
    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v0

    return-object v1

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v1, :cond_1

    const-string v1, "getFillEventHistory"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByAugmentedAutofillServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v0

    return-object v1

    .line 953
    :cond_1
    monitor-exit v0

    .line 954
    const/4 v0, 0x0

    return-object v0

    .line 953
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

    .line 617
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 618
    .local v0, "size":I
    const/4 v1, 0x0

    .line 619
    .local v1, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 620
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 621
    .local v3, "previousSession":Lcom/android/server/autofill/Session;
    iget v4, v3, Lcom/android/server/autofill/Session;->taskId:I

    iget v5, p1, Lcom/android/server/autofill/Session;->taskId:I

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/android/server/autofill/Session;->id:I

    iget v5, p1, Lcom/android/server/autofill/Session;->id:I

    if-eq v4, v5, :cond_1

    .line 622
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getSaveInfoFlagsLocked()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 623
    if-nez v1, :cond_0

    .line 624
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 626
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v3    # "previousSession":Lcom/android/server/autofill/Session;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .locals 13

    .line 1169
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-nez v0, :cond_4

    .line 1170
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "serviceName":Ljava/lang/String;
    const-string v1, "AutofillManagerServiceImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1172
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v3, v3, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v3, :cond_0

    .line 1173
    const-string v3, "getRemoteAugmentedAutofillServiceLocked(): not set"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    return-object v2

    .line 1177
    :cond_1
    iget v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 1179
    invoke-virtual {v4, v5}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isTemporary(I)Z

    move-result v4

    .line 1178
    invoke-static {v0, v3, v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName(Ljava/lang/String;IZ)Landroid/util/Pair;

    move-result-object v3

    .line 1180
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;>;"
    if-nez v3, :cond_2

    return-object v2

    .line 1182
    :cond_2
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ServiceInfo;

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 1183
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 1184
    .local v2, "componentName":Landroid/content/ComponentName;
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_3

    .line 1185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRemoteAugmentedAutofillServiceLocked(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_3
    new-instance v8, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    invoke-direct {v8, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    .line 1233
    .local v8, "callbacks":Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
    new-instance v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v7, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    .line 1234
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

    .line 1239
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ServiceInfo;Landroid/content/ComponentName;>;"
    .end local v8    # "callbacks":Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    return-object v0
.end method

.method getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .locals 11

    .line 1560
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    if-nez v0, :cond_1

    .line 1561
    nop

    .line 1562
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getServiceComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1563
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1564
    const-string v2, "AutofillManagerServiceImpl"

    const-string v3, "No valid component found for InlineSuggestionRenderService"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    return-object v1

    .line 1568
    :cond_0
    new-instance v10, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 1569
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    new-instance v7, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;

    invoke-direct {v7, p0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$1;)V

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 1571
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v9, v1, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    const-string v5, "android.service.autofill.InlineSuggestionRenderService"

    move-object v2, v10

    move-object v4, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/autofill/RemoteInlineSuggestionRenderService$InlineSuggestionRenderCallbacks;ZZ)V

    iput-object v10, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 1574
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteInlineSuggestionRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    return-object v0
.end method

.method getSupportedSmartSuggestionModesLocked()I
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getSupportedSmartSuggestionModesLocked()I

    move-result v0

    return v0
.end method

.method getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->getUrlBarResourceIds(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUserData()Landroid/service/autofill/UserData;
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    monitor-exit v0

    return-object v1

    .line 961
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

    .line 966
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_0
    const-string v1, "getUserData"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    monitor-exit v0

    return-object v1

    .line 970
    :cond_0
    monitor-exit v0

    .line 971
    const/4 v0, 0x0

    return-object v0

    .line 970
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

    .line 666
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 667
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 670
    :cond_0
    return-void
.end method

.method handleSessionSave(Lcom/android/server/autofill/Session;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/autofill/Session;

    .line 634
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 636
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

    .line 638
    monitor-exit v0

    return-void

    .line 640
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/autofill/Session;->callSaveLocked()V

    .line 641
    monitor-exit v0

    .line 642
    return-void

    .line 641
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

    .line 1285
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

    .line 1509
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1510
    :try_start_0
    const-string/jumbo v1, "isFieldClassificationEnabled"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1511
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1513
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1514
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isFieldClassificationEnabledLocked()Z
    .locals 4

    .line 1519
    nop

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    .line 1519
    const-string v2, "autofill_field_classification"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method isInlineSuggestionsEnabled()Z
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v0, :cond_0

    .line 1162
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->isInlineSuggestionsEnabled()Z

    move-result v0

    return v0

    .line 1164
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1364
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1135
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1136
    .local v0, "numSessions":I
    if-gtz v0, :cond_0

    return-void

    .line 1138
    :cond_0
    const-string v1, "%d:%s:%s"

    .line 1139
    .local v1, "fmt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1140
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1141
    .local v3, "id":I
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-nez v4, :cond_1

    .line 1142
    const-string/jumbo v4, "no_svc"

    goto :goto_1

    .line 1143
    :cond_1
    invoke-virtual {v4}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    nop

    .line 1144
    .local v4, "service":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_2

    .line 1145
    const-string/jumbo v5, "no_aug"

    goto :goto_2

    .line 1146
    :cond_2
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    nop

    .line 1147
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

    .line 1139
    .end local v3    # "id":I
    .end local v4    # "service":Ljava/lang/String;
    .end local v5    # "augmentedService":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1149
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method logAugmentedAutofillAuthenticationSelected(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "selectedDataset"    # Ljava/lang/String;
    .param p3, "clientState"    # Landroid/os/Bundle;

    .line 820
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 821
    :try_start_0
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 822
    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, p1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

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

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 828
    monitor-exit v2

    .line 829
    return-void

    .line 821
    :cond_1
    move/from16 v3, p1

    .line 823
    :goto_0
    monitor-exit v2

    return-void

    .line 828
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "suggestionId"    # Ljava/lang/String;
    .param p3, "clientState"    # Landroid/os/Bundle;

    .line 833
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 834
    :try_start_0
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 835
    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, p1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

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

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 841
    monitor-exit v2

    .line 842
    return-void

    .line 834
    :cond_1
    move/from16 v3, p1

    .line 836
    :goto_0
    monitor-exit v2

    return-void

    .line 841
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method logAugmentedAutofillShown(ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    .line 845
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 846
    :try_start_0
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 847
    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, p1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x5

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

    .line 854
    monitor-exit v2

    .line 855
    return-void

    .line 846
    :cond_1
    move/from16 v3, p1

    .line 848
    :goto_0
    monitor-exit v2

    return-void

    .line 854
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V
    .locals 13
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;
    .param p9, "appComponentName"    # Landroid/content/ComponentName;
    .param p10, "compatMode"    # Z
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

    .line 869
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

    .line 872
    return-void
.end method

.method logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V
    .locals 20
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;
    .param p11, "appComponentName"    # Landroid/content/ComponentName;
    .param p12, "compatMode"    # Z
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

    .line 885
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

    .line 886
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_0

    .line 887
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

    .line 895
    invoke-virtual/range {p11 .. p11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", compatMode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 887
    const-string v7, "AutofillManagerServiceImpl"

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 886
    :cond_0
    move-object/from16 v6, p3

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    move-object/from16 v13, p6

    move-object/from16 v12, p7

    .line 898
    :goto_0
    const/4 v5, 0x0

    .line 899
    .local v5, "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    const/4 v7, 0x0

    .line 900
    .local v7, "detectedFieldClassifications":[Landroid/service/autofill/FieldClassification;
    if-eqz v2, :cond_3

    .line 901
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Landroid/view/autofill/AutofillId;

    .line 902
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 903
    nop

    .line 904
    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Landroid/service/autofill/FieldClassification;

    .line 905
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 907
    array-length v8, v5

    .line 908
    .local v8, "numberFields":I
    const/4 v9, 0x0

    .line 909
    .local v9, "totalSize":I
    const/4 v10, 0x0

    .line 910
    .local v10, "totalScore":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_2

    .line 911
    aget-object v16, v7, v11

    .line 912
    .local v16, "fc":Landroid/service/autofill/FieldClassification;
    invoke-virtual/range {v16 .. v16}, Landroid/service/autofill/FieldClassification;->getMatches()Ljava/util/List;

    move-result-object v2

    .line 913
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FieldClassification$Match;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 914
    .local v3, "size":I
    add-int/2addr v9, v3

    .line 915
    const/16 v17, 0x0

    move/from16 v19, v17

    move-object/from16 v17, v5

    move/from16 v5, v19

    .local v5, "j":I
    .local v17, "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    :goto_2
    if-ge v5, v3, :cond_1

    .line 916
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/service/autofill/FieldClassification$Match;

    invoke-virtual/range {v18 .. v18}, Landroid/service/autofill/FieldClassification$Match;->getScore()F

    move-result v18

    add-float v10, v10, v18

    .line 915
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 910
    .end local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/FieldClassification$Match;>;"
    .end local v3    # "size":I
    .end local v5    # "j":I
    .end local v16    # "fc":Landroid/service/autofill/FieldClassification;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v5, v17

    goto :goto_1

    .end local v17    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .local v5, "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    :cond_2
    move-object/from16 v17, v5

    .line 920
    .end local v5    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .end local v11    # "i":I
    .restart local v17    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v10

    int-to-float v3, v9

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 921
    .local v2, "averageScore":I
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v5, 0x4f9

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v11

    .line 922
    move/from16 v16, v9

    move-object/from16 v9, p11

    .end local v9    # "totalSize":I
    .local v16, "totalSize":I
    invoke-static {v5, v9, v11, v1, v4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 924
    invoke-virtual {v5, v8}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v11, 0x4fa

    .line 926
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 925
    invoke-virtual {v5, v11, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 921
    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v1, v7

    move-object/from16 v5, v17

    goto :goto_3

    .line 900
    .end local v2    # "averageScore":I
    .end local v8    # "numberFields":I
    .end local v10    # "totalScore":F
    .end local v16    # "totalSize":I
    .end local v17    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    .restart local v5    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    :cond_3
    move-object/from16 v9, p11

    move-object v1, v7

    .line 928
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

    .line 885
    .end local v1    # "detectedFieldClassifications":[Landroid/service/autofill/FieldClassification;
    .end local v5    # "detectedFieldsIds":[Landroid/view/autofill/AutofillId;
    :cond_4
    move-object/from16 v6, p3

    .line 934
    :goto_4
    return-void
.end method

.method logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "selectedDataset"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "clientState"    # Landroid/os/Bundle;

    .line 770
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 771
    :try_start_0
    const-string/jumbo v0, "logDatasetAuthenticationSelected()"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p2

    :try_start_1
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
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

    .line 776
    :cond_0
    monitor-exit v2

    .line 777
    return-void

    .line 776
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

    .line 796
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 797
    :try_start_0
    const-string/jumbo v0, "logDatasetSelected()"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p2

    :try_start_1
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
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

    .line 802
    :cond_0
    monitor-exit v2

    .line 803
    return-void

    .line 802
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

.method logDatasetShown(ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    .line 809
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 810
    :try_start_0
    const-string/jumbo v0, "logDatasetShown"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p1

    :try_start_1
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v5, 0x5

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

    .line 815
    :cond_0
    monitor-exit v2

    .line 816
    return-void

    .line 815
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

.method logSaveShown(ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    .line 783
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 784
    :try_start_0
    const-string/jumbo v0, "logSaveShown()"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p1

    :try_start_1
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
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

    .line 788
    :cond_0
    monitor-exit v2

    .line 789
    return-void

    .line 788
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

    .line 238
    new-instance v0, Landroid/service/autofill/AutofillServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-direct {v0, v1, p1, v2}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    .line 239
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method onBackKeyPressed()V
    .locals 1

    .line 207
    nop

    .line 208
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 209
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    .line 212
    :cond_0
    return-void
.end method

.method onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 645
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

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 648
    .local v1, "sessionCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 649
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 650
    .local v3, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v3, p2}, Lcom/android/server/autofill/Session;->isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 651
    invoke-virtual {v3, p1, p2}, Lcom/android/server/autofill/Session;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 652
    monitor-exit v0

    return-void

    .line 648
    .end local v3    # "session":Lcom/android/server/autofill/Session;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 655
    .end local v1    # "sessionCount":I
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_3

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No pending Save UI for token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/view/autofill/AutofillManager;

    .line 658
    const-string v2, "PENDING_UI_OPERATION_"

    invoke-static {v1, v2, p1}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    const-string v1, "AutofillManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_3
    return-void

    .line 655
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onSwitchInputMethod()V
    .locals 4

    .line 1589
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1591
    .local v1, "sessionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1592
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 1593
    .local v3, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->onSwitchInputMethodLocked()V

    .line 1591
    .end local v3    # "session":Lcom/android/server/autofill/Session;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1595
    .end local v1    # "sessionCount":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1596
    return-void

    .line 1595
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)V
    .locals 1
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;

    .line 274
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 277
    :cond_0
    return-void
.end method

.method removeSessionLocked(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 606
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 607
    return-void
.end method

.method resetAugmentedAutofillWhitelistLocked()V
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 1387
    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "resetting augmented autofill whitelist"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->resetWhitelist(I)V

    .line 1390
    return-void
.end method

.method resetExtServiceLocked()V
    .locals 2

    .line 674
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManagerServiceImpl"

    const-string/jumbo v1, "reset autofill service."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->reset()V

    .line 676
    return-void
.end method

.method resetLastAugmentedAutofillResponse()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 733
    monitor-exit v0

    .line 734
    return-void

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetLastResponse()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 727
    monitor-exit v0

    .line 728
    return-void

    .line 727
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

    .line 568
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 570
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/android/server/autofill/Session;->switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 574
    const/4 v1, 0x1

    return v1

    .line 571
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method sendActivityAssistDataToContentCapture(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 197
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mContentCaptureManagerInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->sendActivityAssistData(ILandroid/os/IBinder;Landroid/os/Bundle;)Z

    .line 199
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setAugmentedAutofillWhitelistLocked(Ljava/util/List;Ljava/util/List;I)Z
    .locals 4
    .param p3, "callingUid"    # I
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

    .line 1298
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string/jumbo v0, "setAugmentedAutofillWhitelistLocked"

    invoke-direct {p0, v0, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByAugmentedAutofillServiceLocked(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    const/4 v0, 0x0

    return v0

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    const-string v1, "AutofillManagerServiceImpl"

    if-eqz v0, :cond_1

    .line 1303
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

    .line 1306
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->whitelistForAugmentedAutofillPackages(Ljava/util/List;Ljava/util/List;)V

    .line 1308
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    .line 1309
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1310
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .local v0, "serviceName":Ljava/lang/String;
    goto :goto_0

    .line 1312
    .end local v0    # "serviceName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "setAugmentedAutofillWhitelistLocked(): no service"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const-string v0, "N/A"

    .line 1316
    .restart local v0    # "serviceName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6b9

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0x38c

    .line 1317
    invoke-virtual {v1, v2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1318
    .local v1, "log":Landroid/metrics/LogMaker;
    if-eqz p1, :cond_3

    .line 1319
    const/16 v2, 0x6ba

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1321
    :cond_3
    if-eqz p2, :cond_4

    .line 1322
    const/16 v2, 0x6bb

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1324
    :cond_4
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1326
    const/4 v2, 0x1

    return v2
.end method

.method setAuthenticationResultLocked(Landroid/os/Bundle;III)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "sessionId"    # I
    .param p3, "authenticationId"    # I
    .param p4, "uid"    # I

    .line 281
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 285
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-ne p4, v1, :cond_1

    .line 286
    invoke-virtual {v0, p1, p3}, Lcom/android/server/autofill/Session;->setAuthenticationResultLocked(Landroid/os/Bundle;I)V

    .line 288
    :cond_1
    return-void
.end method

.method setAuthenticationSelected(ILandroid/os/Bundle;)V
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    .line 756
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 757
    :try_start_0
    const-string/jumbo v0, "setAuthenticationSelected()"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p1

    :try_start_1
    invoke-direct {v1, v0, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
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

    .line 762
    :cond_0
    monitor-exit v2

    .line 763
    return-void

    .line 762
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 411
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/Session;->setAutofillFailureLocked(Ljava/util/List;)V

    .line 416
    return-void

    .line 412
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

    .line 413
    return-void
.end method

.method setHasCallback(IIZ)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "uid"    # I
    .param p3, "hasIt"    # Z

    .line 291
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 295
    .local v0, "session":Lcom/android/server/autofill/Session;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-ne p2, v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/Session;->setHasCallbackLocked(Z)V

    .line 298
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 300
    :cond_1
    :goto_0
    return-void
.end method

.method setLastAugmentedAutofillResponse(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 715
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_0
    new-instance v1, Landroid/service/autofill/FillEventHistory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 718
    monitor-exit v0

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setLastResponse(ILandroid/service/autofill/FillResponse;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "response"    # Landroid/service/autofill/FillResponse;

    .line 709
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_0
    new-instance v1, Landroid/service/autofill/FillEventHistory;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 711
    monitor-exit v0

    .line 712
    return-void

    .line 711
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

    .line 976
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_0
    const-string/jumbo v1, "setUserData"

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    monitor-exit v0

    return-void

    .line 980
    :cond_0
    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 982
    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 985
    .local v1, "numberFields":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x4f8

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 986
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x392

    .line 987
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 985
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 988
    .end local v1    # "numberFields":I
    monitor-exit v0

    .line 989
    return-void

    .line 988
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

    .line 317
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

    .line 319
    .local v1, "forAugmentedAutofillOnly":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 320
    const-wide/16 v2, 0x0

    return-wide v2

    .line 323
    :cond_1
    const/4 v0, 0x0

    const-wide/32 v15, 0x7fffffff

    const-string v2, "AutofillManagerServiceImpl"

    if-nez v1, :cond_5

    invoke-direct {v12, v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 326
    invoke-virtual {v12, v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v3

    const-string/jumbo v4, "startSession("

    if-eqz v3, :cond_3

    .line 327
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): disabled by service but whitelisted for augmented autofill"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    const/4 v1, 0x1

    move v11, v1

    goto :goto_2

    .line 334
    :cond_3
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_4

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): ignored because disabled by service and not whitelisted for augmented autofill"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_4
    nop

    .line 339
    invoke-static/range {p4 .. p4}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v3

    .line 341
    .local v3, "client":Landroid/view/autofill/IAutoFillManagerClient;
    const/4 v4, 0x4

    :try_start_0
    invoke-interface {v3, v4, v0}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_1

    .line 343
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 344
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

    .line 348
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-wide v15

    .line 352
    .end local v3    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    :cond_5
    move v11, v1

    .end local v1    # "forAugmentedAutofillOnly":Z
    .local v11, "forAugmentedAutofillOnly":Z
    :goto_2
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_6

    .line 353
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

    .line 352
    :cond_6
    move-object/from16 v10, p1

    .line 358
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->pruneAbandonedSessionsLocked()V

    .line 360
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

    .line 363
    .local v7, "newSession":Lcom/android/server/autofill/Session;
    if-nez v7, :cond_7

    .line 364
    return-wide v15

    .line 368
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

    .line 369
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

    .line 370
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

    .line 374
    .local v6, "historyItem":Ljava/lang/String;
    iget-object v1, v12, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    .line 376
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

    .line 378
    if-eqz v0, :cond_9

    .line 381
    const-wide v1, 0x100000000L

    .line 383
    .local v1, "extraFlags":J
    const-wide v3, 0x100000000L

    iget v5, v7, Lcom/android/server/autofill/Session;->id:I

    int-to-long v5, v5

    or-long/2addr v3, v5

    .line 384
    .local v3, "result":J
    return-wide v3

    .line 386
    .end local v1    # "extraFlags":J
    .end local v3    # "result":J
    :cond_9
    iget v1, v7, Lcom/android/server/autofill/Session;->id:I

    int-to-long v1, v1

    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutofillManagerServiceImpl: [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v1, :cond_0

    .line 1602
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

    .line 1600
    return-object v0
.end method

.method protected updateLocked(Z)Z
    .locals 4
    .param p1, "disabled"    # Z

    .line 217
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    .line 218
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 219
    .local v0, "enabledChanged":Z
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 222
    .local v1, "sessionCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 223
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 224
    .local v3, "session":Lcom/android/server/autofill/Session;
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 222
    .end local v3    # "session":Lcom/android/server/autofill/Session;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 227
    .end local v1    # "sessionCount":I
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendStateToClients(Z)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 230
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteInlineSuggestionRenderServiceLocked()V

    .line 232
    return v0
.end method

.method updateRemoteAugmentedAutofillService()V
    .locals 5

    .line 1247
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-eqz v1, :cond_1

    .line 1249
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 1250
    const-string v1, "AutofillManagerServiceImpl"

    const-string/jumbo v2, "updateRemoteAugmentedAutofillService(): destroying old remote service"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsForAugmentedAutofillOnlyLocked()V

    .line 1254
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->unbind()V

    .line 1255
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1256
    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetAugmentedAutofillWhitelistLocked()V

    .line 1260
    :cond_1
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceAvailableLocked()Z

    move-result v1

    .line 1261
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

    .line 1263
    :cond_2
    if-eqz v1, :cond_3

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 1266
    .end local v1    # "available":Z
    :cond_3
    monitor-exit v0

    .line 1267
    return-void

    .line 1266
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

    .line 584
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 585
    .local v0, "session":Lcom/android/server/autofill/Session;
    const/4 v7, 0x0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/autofill/Session;->uid:I

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    move-object v1, v0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    .line 601
    return v7

    .line 586
    :cond_1
    :goto_0
    and-int/lit8 v1, p7, 0x1

    const-string v2, "AutofillManagerServiceImpl"

    if-eqz v1, :cond_3

    .line 587
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    .line 588
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

    .line 591
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 593
    :cond_3
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_4

    .line 594
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

    .line 597
    :cond_4
    return v7
.end method
