.class final Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingRequest"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mOnServiceFailure:Ljava/lang/Runnable;

.field private final mOwningUser:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mRequest:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .param p2, "onServiceFailure"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "service"    # Lcom/android/server/textclassifier/TextClassificationManagerService;
    .param p5, "owningUser"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    nop

    .line 403
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    const-string v1, "handling pending request"

    invoke-static {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$700(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    .line 404
    nop

    .line 405
    const-string/jumbo v0, "notifying callback of service failure"

    invoke-static {p2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$700(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    .line 406
    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    .line 407
    iput-object p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 408
    iput-object p5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOwningUser:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 409
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 411
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 416
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 380
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 380
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 380
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    return-object v0
.end method

.method private removeLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOwningUser:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 430
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 432
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 422
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->removeLocked()V

    .line 423
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
