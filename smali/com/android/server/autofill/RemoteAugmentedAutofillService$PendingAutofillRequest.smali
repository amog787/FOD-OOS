.class final Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;
.super Lcom/android/server/autofill/RemoteAugmentedAutofillService$MyPendingRequest;
.source "RemoteAugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteAugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingAutofillRequest"
.end annotation


# instance fields
.field private final mActivityComponent:Landroid/content/ComponentName;

.field private final mCallback:Landroid/service/autofill/augmented/IFillCallback;

.field private mCancellation:Landroid/os/ICancellationSignal;

.field private final mClient:Landroid/view/autofill/IAutoFillManagerClient;

.field private final mFocusedId:Landroid/view/autofill/AutofillId;

.field private final mFocusedValue:Landroid/view/autofill/AutofillValue;

.field private final mRequestTime:J

.field private final mSessionId:I

.field private final mTaskId:I


# direct methods
.method protected constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .param p2, "sessionId"    # I
    .param p3, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p4, "taskId"    # I
    .param p5, "activityComponent"    # Landroid/content/ComponentName;
    .param p6, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p7, "focusedValue"    # Landroid/view/autofill/AutofillValue;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$MyPendingRequest;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILcom/android/server/autofill/RemoteAugmentedAutofillService$1;)V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mRequestTime:J

    .line 190
    iput-object p3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 191
    iput p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mSessionId:I

    .line 192
    iput p4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mTaskId:I

    .line 193
    iput-object p5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mActivityComponent:Landroid/content/ComponentName;

    .line 194
    iput-object p6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 195
    iput-object p7, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    .line 196
    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$1;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    .line 231
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->finish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Landroid/view/autofill/AutofillId;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mFocusedId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Landroid/view/autofill/AutofillValue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget-wide v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mRequestTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Landroid/service/autofill/augmented/IFillCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;
    .param p1, "x1"    # Landroid/os/ICancellationSignal;

    .line 174
    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->isCancelledLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->isRequestCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mSessionId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    .line 174
    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mTaskId:I

    return v0
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    .line 287
    invoke-super {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$MyPendingRequest;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 292
    .local v1, "cancellation":Landroid/os/ICancellationSignal;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-eqz v1, :cond_1

    .line 295
    :try_start_1
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mTag:Ljava/lang/String;

    const-string v3, "Error cancelling an augmented fill request"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 292
    .end local v1    # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    .line 174
    check-cast p1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->onTimeout(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    return-void
.end method

.method protected onTimeout(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V
    .locals 8
    .param p1, "remoteService"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 270
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PendingAutofillRequest timed out ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$1700(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 276
    .local v1, "cancellation":Landroid/os/ICancellationSignal;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v1, :cond_0

    .line 278
    invoke-static {p1, v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$1800(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/os/ICancellationSignal;)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->finish()Z

    .line 281
    const/16 v2, 0xf

    invoke-virtual {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mActivityComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mSessionId:I

    .line 282
    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$1700(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)I

    move-result v0

    int-to-long v6, v0

    .line 281
    invoke-static/range {v2 .. v7}, Landroid/service/autofill/augmented/Helper;->logResponse(ILjava/lang/String;Landroid/content/ComponentName;IJ)V

    .line 283
    return-void

    .line 276
    .end local v1    # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    .line 235
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->isCancelledLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "run() called after canceled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    monitor-exit v0

    return-void

    .line 240
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 242
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    if-nez v0, :cond_2

    return-void

    .line 244
    :cond_2
    new-instance v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest$2;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    .line 258
    .local v1, "receiver":Lcom/android/internal/os/IResultReceiver;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v2, v1}, Landroid/view/autofill/IAutoFillManagerClient;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    goto :goto_0

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$1600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception handling getAugmentedAutofillClient() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->mSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;->finish()Z

    .line 264
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 240
    .end local v0    # "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .end local v1    # "receiver":Lcom/android/internal/os/IResultReceiver;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
