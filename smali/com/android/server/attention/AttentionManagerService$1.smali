.class Lcom/android/server/attention/AttentionManagerService$1;
.super Landroid/service/attention/IAttentionCallback$Stub;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/attention/AttentionManagerService;->createAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;

.field final synthetic val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field final synthetic val$userState:Lcom/android/server/attention/AttentionManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 230
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$1;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$1;->val$userState:Lcom/android/server/attention/AttentionManagerService$UserState;

    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-direct {p0}, Landroid/service/attention/IAttentionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "error"    # I

    .line 252
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$1;->val$userState:Lcom/android/server/attention/AttentionManagerService$UserState;

    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {v0, p1}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 254
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$1;->val$userState:Lcom/android/server/attention/AttentionManagerService$UserState;

    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$802(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z

    .line 257
    :cond_0
    const/16 v0, 0x8f

    invoke-static {v0, p1}, Landroid/util/StatsLog;->write(II)I

    .line 260
    return-void
.end method

.method public onSuccess(IJ)V
    .locals 9
    .param p1, "result"    # I
    .param p2, "timestamp"    # J

    .line 234
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$1;->val$userState:Lcom/android/server/attention/AttentionManagerService$UserState;

    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$1;->val$callbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 236
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$1;->val$userState:Lcom/android/server/attention/AttentionManagerService$UserState;

    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$802(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$1;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$1000(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$1;->val$userState:Lcom/android/server/attention/AttentionManagerService$UserState;

    new-instance v8, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object v2, v8

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;-><init>(JIJ)V

    iput-object v8, v1, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCache:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    const/16 v0, 0x8f

    invoke-static {v0, p1}, Landroid/util/StatsLog;->write(II)I

    .line 247
    return-void

    .line 243
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
