.class Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;
.super Landroid/os/Handler;
.source "FrameworkResourcesServiceNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Landroid/os/Looper;Landroid/os/Handler$Callback;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .line 141
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iput p5, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->val$userId:I

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-static {v0}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->access$000(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->val$userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->resetTemporaryService(I)V

    .line 147
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid handler msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void
.end method
