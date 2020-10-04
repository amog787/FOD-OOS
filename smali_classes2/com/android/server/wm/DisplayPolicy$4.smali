.class Lcom/android/server/wm/DisplayPolicy$4;
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

    .line 4246
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4249
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4252
    monitor-exit v0

    return-void

    .line 4254
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->access$2302(Lcom/android/server/wm/DisplayPolicy;J)J

    .line 4261
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget v1, v1, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$2400(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mIsNeedToHideNavBar:Z

    if-nez v1, :cond_1

    .line 4263
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$2500(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/BarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 4265
    :cond_1
    monitor-exit v0

    .line 4266
    return-void

    .line 4265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
