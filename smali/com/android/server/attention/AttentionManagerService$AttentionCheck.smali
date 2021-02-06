.class final Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttentionCheck"
.end annotation


# instance fields
.field private final mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field private final mIAttentionCallback:Landroid/service/attention/IAttentionCallback;

.field private mIsDispatched:Z

.field private mIsFulfilled:Z


# direct methods
.method constructor <init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Landroid/service/attention/IAttentionCallback;)V
    .locals 0
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    .param p2, "iAttentionCallback"    # Landroid/service/attention/IAttentionCallback;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 522
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Landroid/service/attention/IAttentionCallback;

    .line 523
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 513
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 513
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
    .param p1, "x1"    # Z

    .line 513
    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 513
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
    .param p1, "x1"    # Z

    .line 513
    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 513
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Landroid/service/attention/IAttentionCallback;

    return-object v0
.end method


# virtual methods
.method cancelInternal()V
    .locals 2

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 527
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 528
    return-void
.end method
