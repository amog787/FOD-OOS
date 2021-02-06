.class public Lcom/android/server/attention/AttentionManagerService$UserState;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UserState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;
    }
.end annotation


# instance fields
.field mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

.field private final mAttentionHandler:Landroid/os/Handler;

.field private mBinding:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

.field private final mContext:Landroid/content/Context;

.field mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

.field private final mLock:Ljava/lang/Object;

.field mService:Landroid/service/attention/IAttentionService;

.field private final mUserId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "componentName"    # Landroid/content/ComponentName;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService$UserState;Lcom/android/server/attention/AttentionManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    .line 553
    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mUserId:I

    .line 554
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mContext:Landroid/content/Context;

    .line 555
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mLock:Ljava/lang/Object;

    .line 556
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mComponentName:Landroid/content/ComponentName;

    .line 557
    iput-object p4, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionHandler:Landroid/os/Handler;

    .line 558
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/attention/AttentionManagerService$UserState;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$UserState;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 532
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/attention/AttentionManagerService$UserState;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 532
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/attention/AttentionManagerService$UserState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$UserState;
    .param p1, "x1"    # Z

    .line 532
    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mBinding:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 532
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$UserState;->handlePendingCallbackLocked()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 532
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/attention/AttentionManagerService$UserState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 532
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 532
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService$UserState;->bindLocked()V

    return-void
.end method

.method private bindLocked()V
    .locals 2

    .line 580
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mBinding:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mBinding:Z

    .line 588
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$UserState$2cc0P7pJchsigKpbEq7IoxYFsSM;

    invoke-direct {v1, p0}, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$UserState$2cc0P7pJchsigKpbEq7IoxYFsSM;-><init>(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 597
    return-void

    .line 581
    :cond_1
    :goto_0
    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string v1, "current attention check:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is dispatched="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$700(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is fulfilled:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    if-eqz v1, :cond_1

    .line 611
    const-string v1, "attention check cache:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->access$1500(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 613
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    invoke-virtual {v3, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->get(I)Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$600(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    invoke-virtual {v3, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->get(I)Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$500(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 620
    return-void

    .line 619
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handlePendingCallbackLocked()V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$700(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-eqz v0, :cond_0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$900(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 566
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$702(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AttentionManagerService"

    const-string v2, "Cannot call into the AttentionService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$1100(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 574
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$bindLocked$0$AttentionManagerService$UserState()V
    .locals 5

    .line 589
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.attention.AttentionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mComponentName:Landroid/content/ComponentName;

    .line 590
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 593
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$UserState;->mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v4, 0x4001001

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 596
    return-void
.end method
