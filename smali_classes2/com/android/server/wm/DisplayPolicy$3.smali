.class Lcom/android/server/wm/DisplayPolicy$3;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 1550
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1553
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1554
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v2, -0x3

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->access$1972(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1555
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 1556
    monitor-exit v0

    .line 1557
    return-void

    .line 1556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
