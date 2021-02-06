.class public final Lcom/android/server/textclassifier/TextClassificationManagerService;
.super Landroid/service/textclassifier/ITextClassifierService$Stub;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationManagerService"

.field private static final NO_OP_CALLBACK:Landroid/service/textclassifier/ITextClassifierCallback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultTextClassifierPackage:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

.field private final mSettings:Landroid/view/textclassifier/TextClassificationConstants;

.field private final mSettingsListener:Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

.field private final mSystemTextClassifierPackage:Ljava/lang/String;

.field final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    invoke-direct {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$1;-><init>()V

    sput-object v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierService$Stub;-><init>()V

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 163
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationConstants;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 166
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettingsListener:Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

    .line 167
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 168
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultTextClassifierPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 169
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    .line 170
    new-instance v1, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/textclassifier/TextClassificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 82
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->startListenSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 82
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/view/textclassifier/TextClassificationConstants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 82
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 82
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 82
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/textclassifier/TextClassificationManagerService;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->resolvePackageToUid(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/textclassifier/TextClassificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onTextClassifierServicePackageOverrideChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .param p1, "x1"    # Ljava/lang/String;

    .line 82
    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->logOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 82
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .locals 3
    .param p1, "userId"    # I

    .line 357
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 358
    .local v0, "result":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    if-nez v0, :cond_0

    .line 359
    new-instance v1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    move-object v0, v1

    .line 360
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    :cond_0
    return-object v0
.end method

.method private handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 19
    .param p1, "sysTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .param p2, "verifyCallingPackage"    # Z
    .param p3, "attemptToBind"    # Z
    .param p5, "methodName"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/SystemTextClassifierMetadata;",
            "ZZ",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<",
            "Landroid/service/textclassifier/ITextClassifierService;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/service/textclassifier/ITextClassifierCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    .local p4, "textClassifierServiceConsumer":Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;, "Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer<Landroid/service/textclassifier/ITextClassifierService;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getUserId()I

    move-result v0

    :goto_0
    move v12, v0

    .line 433
    .local v12, "userId":I
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v13, v0

    .line 435
    .local v13, "callingPackageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez p1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->useDefaultTextClassifier()Z

    move-result v0

    :goto_2
    move v14, v0

    .line 438
    .local v14, "useDefaultTextClassifier":Z
    if-eqz p2, :cond_3

    .line 439
    :try_start_0
    invoke-direct {v9, v13}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateCallingPackage(Ljava/lang/String;)V

    .line 441
    :cond_3
    invoke-direct {v9, v12}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    nop

    .line 446
    iget-object v15, v9, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 447
    :try_start_1
    invoke-direct {v9, v12}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v0

    .line 448
    .local v0, "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    nop

    .line 449
    invoke-virtual {v0, v14}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getServiceStateLocked(Z)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object v1

    move-object v8, v1

    .line 450
    .local v8, "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    if-nez v8, :cond_4

    .line 451
    const-string v1, "TextClassificationManagerService"

    const-string v2, "No configured system TextClassifierService"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    goto/16 :goto_3

    .line 453
    :cond_4
    if-eqz p3, :cond_5

    invoke-static {v8}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->access$500(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 454
    const-string v1, "TextClassificationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to bind TextClassifierService at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    goto :goto_3

    .line 456
    :cond_5
    invoke-virtual {v8}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v8, v1, v11}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->access$600(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 458
    monitor-exit v15

    return-void

    .line 460
    :cond_6
    iget-object v1, v8, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v10, v1}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    .line 462
    :cond_7
    iget-object v7, v8, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    new-instance v6, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$2sJrwO1jPjEX_2E7aDk6t5666lk;

    invoke-direct {v3, v10, v8}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$2sJrwO1jPjEX_2E7aDk6t5666lk;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V

    .line 466
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;

    move-object/from16 v5, p6

    invoke-direct {v4, v5}, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object v1, v6

    move-object/from16 v2, p5

    move-object/from16 v5, v16

    move-object/from16 v16, v0

    move-object v0, v6

    .end local v0    # "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .local v16, "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    move-object/from16 v6, p0

    move-object v9, v7

    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8    # "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .local v18, "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V

    .line 462
    invoke-virtual {v9, v0}, Lcom/android/server/textclassifier/FixedSizeQueue;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v16    # "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .end local v18    # "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    :goto_3
    monitor-exit v15

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    throw v2
.end method

.method static synthetic lambda$handleRequest$10(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .locals 1
    .param p0, "textClassifierServiceConsumer"    # Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;
    .param p1, "serviceState"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 465
    iget-object v0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {p0, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$logOnFailure$11(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "opDesc"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassificationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$onClassifyText$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 1
    .param p0, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p1, "request"    # Landroid/view/textclassifier/TextClassification$Request;
    .param p2, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .param p3, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-static {p2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->wrap(Landroid/service/textclassifier/ITextClassifierCallback;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v0

    invoke-interface {p3, p0, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method static synthetic lambda$onCreateTextClassificationSession$7(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 0
    .param p0, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    invoke-interface {p2, p0, p1}, Landroid/service/textclassifier/ITextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 319
    return-void
.end method

.method static synthetic lambda$onDetectLanguage$5(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p1, "request"    # Landroid/view/textclassifier/TextLanguage$Request;
    .param p2, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .param p3, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    invoke-interface {p3, p0, p1, p2}, Landroid/service/textclassifier/ITextClassifierService;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method static synthetic lambda$onGenerateLinks$2(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;
    .param p2, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .param p3, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-interface {p3, p0, p1, p2}, Landroid/service/textclassifier/ITextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method static synthetic lambda$onSelectionEvent$3(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;
    .param p2, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    invoke-interface {p2, p0, p1}, Landroid/service/textclassifier/ITextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    return-void
.end method

.method static synthetic lambda$onSuggestConversationActions$6(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 1
    .param p0, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p1, "request"    # Landroid/view/textclassifier/ConversationActions$Request;
    .param p2, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .param p3, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    nop

    .line 297
    invoke-static {p2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->wrap(Landroid/service/textclassifier/ITextClassifierCallback;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v0

    .line 296
    invoke-interface {p3, p0, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method static synthetic lambda$onSuggestSelection$0(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;
    .param p2, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .param p3, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-interface {p3, p0, p1, p2}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method static synthetic lambda$onTextClassifierEvent$4(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 0
    .param p0, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p1, "event"    # Landroid/view/textclassifier/TextClassifierEvent;
    .param p2, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    invoke-interface {p2, p0, p1}, Landroid/service/textclassifier/ITextClassifierService;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method

.method private static logOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "r"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .param p1, "opDesc"    # Ljava/lang/String;

    .line 556
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 557
    :cond_0
    new-instance v0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$LbKHscWPDUIjKzR4a1gANqdMY6c;

    invoke-direct {v0, p1}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$LbKHscWPDUIjKzR4a1gANqdMY6c;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/util/FunctionalUtils;->handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private onTextClassifierServicePackageOverrideChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "overriddenPackage"    # Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 481
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 482
    iget-object v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 483
    .local v3, "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    invoke-virtual {v3, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->onTextClassifierServicePackageOverrideChangedLocked(Ljava/lang/String;)V

    .line 481
    .end local v3    # "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 486
    return-void

    .line 485
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resolvePackageToUid(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 371
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 372
    return v0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 376
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 377
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get the UID for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextClassificationManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private startListenSettings()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettingsListener:Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

    invoke-virtual {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->registerObserver()V

    .line 175
    return-void
.end method

.method private validateCallingPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 563
    if-eqz p1, :cond_2

    .line 564
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 565
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 566
    .local v0, "packageUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 567
    .local v1, "callingUid":I
    if-eq v1, v0, :cond_1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package name. callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 574
    .end local v0    # "packageUid":I
    .end local v1    # "callingUid":I
    :cond_2
    return-void
.end method

.method private validateUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 577
    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null userId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 578
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 579
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId. UserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", CallingUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_1
    return-void
.end method

.method private static wrap(Landroid/service/textclassifier/ITextClassifierCallback;)Landroid/service/textclassifier/ITextClassifierCallback;
    .locals 1
    .param p0, "orig"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 475
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;

    invoke-direct {v0, p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "TextClassificationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 392
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$bskC2PS7oOlLzDJkBbOVEdfy1Gg;

    invoke-direct {v1, p0, v0}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$bskC2PS7oOlLzDJkBbOVEdfy1Gg;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 395
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "context"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 396
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 397
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    const-string v2, "defaultTextClassifierPackage"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 398
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 399
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    const-string v2, "systemTextClassifierPackage"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 400
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 401
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 403
    .local v2, "size":I
    const-string v3, "Number user states: "

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 405
    if-lez v2, :cond_1

    .line 406
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 407
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 408
    iget-object v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 409
    .local v4, "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    const-string v5, "User"

    iget-object v6, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 410
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 411
    invoke-virtual {v4, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 412
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 406
    nop

    .end local v4    # "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 415
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of active sessions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-virtual {v4}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 416
    .end local v2    # "size":I
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$dump$9$TextClassificationManagerService(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassificationManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public synthetic lambda$onDestroyTextClassificationSession$8$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/service/textclassifier/ITextClassifierService;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "service"    # Landroid/service/textclassifier/ITextClassifierService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 347
    invoke-interface {p2, p1}, Landroid/service/textclassifier/ITextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-virtual {v0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->remove(Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 349
    return-void
.end method

.method public onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextClassification$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    nop

    .line 207
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$kUVQfCEBNt6jzkS89Io4xSHSuIs;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 206
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v6, "onClassifyText"

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 213
    return-void
.end method

.method public onConnectedStateChanged(I)V
    .locals 0
    .param p1, "connected"    # I

    .line 179
    return-void
.end method

.method public onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 9
    .param p1, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->put(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V

    .line 312
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    nop

    .line 314
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ZPSzw7rhpLr5Q8xyfx1i_csyNwE;

    invoke-direct {v6, p1, p2}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ZPSzw7rhpLr5Q8xyfx1i_csyNwE;-><init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    sget-object v8, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 313
    const-string v7, "onCreateTextClassificationSession"

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 322
    return-void

    .line 312
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 11
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    .line 331
    invoke-virtual {v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->get(Landroid/view/textclassifier/TextClassificationSessionId;)Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    move-result-object v1

    .line 332
    .local v1, "textClassificationContext":Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;
    if-eqz v1, :cond_0

    .line 333
    iget v2, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->userId:I

    goto :goto_0

    .line 334
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    :goto_0
    nop

    .line 336
    .local v2, "userId":I
    if-eqz v1, :cond_1

    .line 337
    iget-boolean v3, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->useDefaultTextClassifier:Z

    goto :goto_1

    .line 338
    :cond_1
    const/4 v3, 0x1

    :goto_1
    nop

    .line 339
    .local v3, "useDefaultTextClassifier":Z
    new-instance v5, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    const-string v4, ""

    invoke-direct {v5, v4, v2, v3}, Landroid/view/textclassifier/SystemTextClassifierMetadata;-><init>(Ljava/lang/String;IZ)V

    .line 342
    .local v5, "sysTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$64mAXU9GjFt2f69p_xdhRl7xXFQ;

    invoke-direct {v8, p0, p1}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$64mAXU9GjFt2f69p_xdhRl7xXFQ;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;)V

    const-string v9, "onDestroyTextClassificationSession"

    sget-object v10, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Landroid/service/textclassifier/ITextClassifierCallback;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 352
    .end local v1    # "textClassificationContext":Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;
    .end local v2    # "userId":I
    .end local v3    # "useDefaultTextClassifier":Z
    .end local v5    # "sysTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLanguage$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLanguage$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    nop

    .line 276
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLanguage$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$evPEo-mmJh6oAuwYuZkLKKZd_Dw;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$evPEo-mmJh6oAuwYuZkLKKZd_Dw;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 275
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v6, "onDetectLanguage"

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 282
    return-void
.end method

.method public onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLinks$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    nop

    .line 224
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$dSVln_o2_pbF3ORGnBQ8z407M10;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$dSVln_o2_pbF3ORGnBQ8z407M10;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 223
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v6, "onGenerateLinks"

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 230
    return-void
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 8
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/SelectionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p2}, Landroid/view/textclassifier/SelectionEvent;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    nop

    .line 240
    invoke-virtual {p2}, Landroid/view/textclassifier/SelectionEvent;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Zo3yKbNMpKbAhJ7coUzTv5c-zZI;

    invoke-direct {v5, p1, p2}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Zo3yKbNMpKbAhJ7coUzTv5c-zZI;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    sget-object v7, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 239
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v6, "onSelectionEvent"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 246
    return-void
.end method

.method public onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/ConversationActions$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Landroid/view/textclassifier/ConversationActions$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    nop

    .line 293
    invoke-virtual {p2}, Landroid/view/textclassifier/ConversationActions$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Mu95ZECYMawAFTgaMzQ9kasDiKU;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Mu95ZECYMawAFTgaMzQ9kasDiKU;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 292
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v6, "onSuggestConversationActions"

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 300
    return-void
.end method

.method public onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextSelection$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    nop

    .line 190
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$C6b5fl8vcOQ42djzSJ_03hDc6yA;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$C6b5fl8vcOQ42djzSJ_03hDc6yA;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 189
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v6, "onSuggestSelection"

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 196
    return-void
.end method

.method public onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 9
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/TextClassifierEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    .line 256
    .local v0, "eventContext":Landroid/view/textclassifier/TextClassificationContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    .line 258
    .local v3, "systemTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$XSRTA8JOHnkYT6Nx-j6ZQZBVb1k;

    invoke-direct {v6, p1, p2}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$XSRTA8JOHnkYT6Nx-j6ZQZBVb1k;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    sget-object v8, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Landroid/service/textclassifier/ITextClassifierCallback;

    const-string v7, "onTextClassifierEvent"

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 265
    return-void
.end method

.method peekUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .locals 1
    .param p1, "userId"    # I

    .line 367
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    return-object v0
.end method
