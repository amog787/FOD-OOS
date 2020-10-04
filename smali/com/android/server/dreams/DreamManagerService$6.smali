.class Lcom/android/server/dreams/DreamManagerService$6;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    .line 684
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 688
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$300(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->access$2400(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->access$2500(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 690
    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->access$2400(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$2600(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->access$2700(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "android.server.dreams:SYSPROP"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 695
    :cond_0
    monitor-exit v0

    .line 696
    return-void

    .line 695
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
