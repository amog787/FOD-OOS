.class Lcom/android/server/vr/VrManagerService$1;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .line 178
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    .line 181
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$100(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$200(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 189
    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$400(Lcom/android/server/vr/VrManagerService;)V

    .line 194
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$500(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    :cond_3
    const-string v1, "VrManagerService"

    const-string v2, "VrListenerSevice has died permanently, leaving system VR mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/vr/VrManagerService;->access$600(Lcom/android/server/vr/VrManagerService;Z)V

    .line 204
    :cond_4
    return-void

    .line 194
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
