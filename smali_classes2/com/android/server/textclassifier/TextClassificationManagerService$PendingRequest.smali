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

.field private final mName:Ljava/lang/String;

.field private final mOnServiceFailure:Ljava/lang/Runnable;

.field private final mRequest:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

.field private final mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field private final mUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .param p3, "onServiceFailure"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "service"    # Lcom/android/server/textclassifier/TextClassificationManagerService;
    .param p6, "serviceState"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .param p7, "uid"    # I

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    .line 521
    nop

    .line 522
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    const-string v1, "handling pending request"

    invoke-static {v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$700(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    .line 523
    nop

    .line 524
    const-string v0, "notifying callback of service failure"

    invoke-static {p3, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$700(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    .line 525
    iput-object p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    .line 526
    iput-object p5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 527
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p6

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 528
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 530
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 535
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iput p7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mUid:I

    .line 536
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 488
    iget v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mUid:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 488
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 488
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 488
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 488
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method private removeLocked()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v0, p0}, Lcom/android/server/textclassifier/FixedSizeQueue;->remove(Ljava/lang/Object;)Z

    .line 549
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 550
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 552
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 542
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->removeLocked()V

    .line 543
    monitor-exit v0

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
