.class Lcom/android/server/am/BroadcastDispatcher$2;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastDispatcher;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastDispatcher;

    .line 211
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher$2;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher$2;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->access$000(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 215
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "BroadcastDispatcher"

    const-string v2, "Deferral recheck of pending broadcasts"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$2;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->access$400(Lcom/android/server/am/BroadcastDispatcher;)Lcom/android/server/am/BroadcastQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 219
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher$2;->this$0:Lcom/android/server/am/BroadcastDispatcher;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/BroadcastDispatcher;->access$502(Lcom/android/server/am/BroadcastDispatcher;Z)Z

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
