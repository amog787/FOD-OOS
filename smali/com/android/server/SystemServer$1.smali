.class Lcom/android/server/SystemServer$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->performPendingShutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$reboot:Z


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SystemServer;

    .line 624
    iput-object p1, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    iput-boolean p2, p0, Lcom/android/server/SystemServer$1;->val$reboot:Z

    iput-object p3, p0, Lcom/android/server/SystemServer$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 627
    monitor-enter p0

    .line 628
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/SystemServer$1;->val$reboot:Z

    iget-object v2, p0, Lcom/android/server/SystemServer$1;->val$reason:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 629
    monitor-exit p0

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
