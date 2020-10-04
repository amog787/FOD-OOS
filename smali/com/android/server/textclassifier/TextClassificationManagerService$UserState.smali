.class final Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;
    }
.end annotation


# instance fields
.field mBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field final mPendingRequests:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/service/textclassifier/ITextClassifierService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    .line 473
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    .line 484
    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 485
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    .line 486
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    .line 487
    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/Object;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 470
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(ILandroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 470
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 470
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->handlePendingRequestsLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 470
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindIfHasPendingRequestsLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 470
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 470
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method private bindIfHasPendingRequestsLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bindLocked()Z
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 531
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    .line 532
    invoke-static {v2}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 535
    const/4 v3, 0x0

    .line 547
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    return v3

    .line 537
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 539
    .local v3, "serviceIntent":Landroid/content/Intent;
    const-string v4, "TextClassificationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    const v6, 0x4200001

    iget v7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 544
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 540
    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    .line 545
    .local v4, "willBind":Z
    iput-boolean v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    nop

    .line 549
    return v4

    .line 547
    .end local v4    # "willBind":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 524
    .end local v0    # "identity":J
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 553
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mContext:Landroid/content/Context;

    const-string v1, "context"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 554
    iget v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 555
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    const-string v1, "binding"

    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mBinding:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 557
    const-string/jumbo v1, "numberRequests"

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 558
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handlePendingRequestsLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 497
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    move-object v1, v0

    .local v1, "request":Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;
    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$900(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 501
    :cond_1
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 502
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 506
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 510
    :cond_3
    return-void
.end method


# virtual methods
.method isBoundLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
