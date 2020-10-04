.class Lcom/android/server/UiModeManagerService$5;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 212
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 215
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->access$502(Lcom/android/server/UiModeManagerService;Z)Z

    .line 217
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v1, v1, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 220
    :cond_0
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
