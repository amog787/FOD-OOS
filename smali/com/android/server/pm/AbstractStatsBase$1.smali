.class Lcom/android/server/pm/AbstractStatsBase$1;
.super Ljava/lang/Thread;
.source "AbstractStatsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AbstractStatsBase;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AbstractStatsBase;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/AbstractStatsBase;
    .param p2, "name"    # Ljava/lang/String;

    .line 75
    .local p0, "this":Lcom/android/server/pm/AbstractStatsBase$1;, "Lcom/android/server/pm/AbstractStatsBase$1;"
    iput-object p1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    iput-object p3, p0, Lcom/android/server/pm/AbstractStatsBase$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 79
    .local p0, "this":Lcom/android/server/pm/AbstractStatsBase$1;, "Lcom/android/server/pm/AbstractStatsBase$1;"
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    iget-object v2, p0, Lcom/android/server/pm/AbstractStatsBase$1;->val$data:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/pm/AbstractStatsBase;->access$000(Lcom/android/server/pm/AbstractStatsBase;Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    invoke-static {v1}, Lcom/android/server/pm/AbstractStatsBase;->access$100(Lcom/android/server/pm/AbstractStatsBase;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    invoke-static {v1}, Lcom/android/server/pm/AbstractStatsBase;->access$200(Lcom/android/server/pm/AbstractStatsBase;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    invoke-static {v2}, Lcom/android/server/pm/AbstractStatsBase;->access$200(Lcom/android/server/pm/AbstractStatsBase;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    throw v1
.end method
