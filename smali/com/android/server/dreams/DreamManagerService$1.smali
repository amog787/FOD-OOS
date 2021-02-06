.class Lcom/android/server/dreams/DreamManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->onBootPhase(I)V
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

    .line 161
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 164
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$200(Lcom/android/server/dreams/DreamManagerService;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$300(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const/4 v2, 0x0

    const-string/jumbo v3, "user switched"

    invoke-static {v1, v2, v3}, Lcom/android/server/dreams/DreamManagerService;->access$400(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V

    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
