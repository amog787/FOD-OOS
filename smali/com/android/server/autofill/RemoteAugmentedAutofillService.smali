.class final Lcom/android/server/autofill/RemoteAugmentedAutofillService;
.super Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;
.source "RemoteAugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;,
        Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;,
        Lcom/android/server/autofill/RemoteAugmentedAutofillService$MyPendingRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<",
        "Lcom/android/server/autofill/RemoteAugmentedAutofillService;",
        "Landroid/service/autofill/augmented/IAugmentedAutofillService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIdleUnbindTimeoutMs:I

.field private final mRequestTimeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;ZZII)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callbacks"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
    .param p5, "bindInstantServiceAllowed"    # Z
    .param p6, "verbose"    # Z
    .param p7, "idleUnbindTimeoutMs"    # I
    .param p8, "requestTimeoutMs"    # I

    .line 64
    move-object v9, p0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 66
    if-eqz p5, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 64
    const-string v2, "android.service.autofill.augmented.AugmentedAutofillService"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    .line 67
    move/from16 v0, p7

    iput v0, v9, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    .line 68
    move/from16 v1, p8

    iput v1, v9, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    .line 71
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->scheduleBind()V

    .line 72
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Landroid/os/IInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 51
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mService:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 51
    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/os/ICancellationSignal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .param p1, "x1"    # Landroid/os/ICancellationSignal;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method private dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V
    .locals 2
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;

    .line 154
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$3YjensAPYJHBJpP8njsOCNRhSYw;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$3YjensAPYJHBJpP8njsOCNRhSYw;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/os/ICancellationSignal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method static getComponentName(Ljava/lang/String;IZ)Landroid/util/Pair;
    .locals 7
    .param p0, "componentName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "isTemporary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ServiceInfo;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 77
    const/16 v0, 0x80

    .line 78
    .local v0, "flags":I
    if-nez p2, :cond_0

    .line 79
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 85
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 86
    .local v3, "serviceComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v3, v0, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    move-object v1, v4

    .line 88
    if-nez v1, :cond_1

    .line 89
    sget-object v4, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad service name for flags "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object v2

    .line 95
    :cond_1
    nop

    .line 96
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 92
    .end local v3    # "serviceComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting service info for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v2
.end method

.method static synthetic lambda$onDestroyAutofillWindowsRequest$0(Landroid/service/autofill/augmented/IAugmentedAutofillService;)V
    .locals 0
    .param p0, "s"    # Landroid/service/autofill/augmented/IAugmentedAutofillService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-interface {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDestroyAllFillWindowsRequest()V

    return-void
.end method


# virtual methods
.method protected getRemoteRequestMillis()J
    .locals 2

    .line 127
    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IAugmentedAutofillService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 117
    invoke-static {p1}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutIdleBindMillis()J
    .locals 2

    .line 122
    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->scheduleUnbind()V

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    invoke-interface {v0, v1, v2}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onConnected(ZZ)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    invoke-interface {v0}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling onConnectedStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public synthetic lambda$dispatchOnFillTimeout$1$RemoteAugmentedAutofillService(Landroid/os/ICancellationSignal;)V
    .locals 4
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;

    .line 156
    :try_start_0
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling cancellation signal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onDestroyAutofillWindowsRequest()V
    .locals 1

    .line 150
    sget-object v0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 151
    return-void
.end method

.method public onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p3, "taskId"    # I
    .param p4, "activityComponent"    # Landroid/content/ComponentName;
    .param p5, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p6, "focusedValue"    # Landroid/view/autofill/AutofillValue;

    .line 136
    new-instance v8, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    invoke-virtual {p0, v8}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteAugmentedAutofillService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method
