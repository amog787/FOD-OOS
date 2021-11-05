.class Lcom/android/server/am/ActivityManagerServiceInjector$2;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 181
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 184
    const-string v0, "ActivityManagerServiceInjector"

    const/4 v1, 0x0

    .line 186
    .local v1, "timeoutShutdown":Z
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$600(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$000(Lcom/android/server/am/ActivityManagerServiceInjector;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$200(Lcom/android/server/am/ActivityManagerServiceInjector;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$100(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 190
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$002(Lcom/android/server/am/ActivityManagerServiceInjector;Z)Z

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$300(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$300(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_1
    if-eqz v1, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$200(Lcom/android/server/am/ActivityManagerServiceInjector;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->shutdown(Z)V

    .line 195
    :cond_2
    return-void

    .line 197
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 198
    .local v3, "now":J
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$700(Lcom/android/server/am/ActivityManagerServiceInjector;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/32 v7, 0x1b7740

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoShutdown: mTurnOffScreenIfSetupIdle() mLastInputEvent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 202
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$700(Lcom/android/server/am/ActivityManagerServiceInjector;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " now = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x1

    .line 207
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$300(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 208
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$300(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 212
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$500(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$400(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/32 v7, 0x2bf20

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v3    # "now":J
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 218
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$200(Lcom/android/server/am/ActivityManagerServiceInjector;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->shutdown(Z)V

    goto :goto_2

    .line 217
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 214
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in pointer handler. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_6

    .line 218
    goto :goto_1

    .line 221
    :cond_6
    :goto_2
    return-void

    .line 217
    :goto_3
    if-eqz v1, :cond_7

    .line 218
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$2;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$200(Lcom/android/server/am/ActivityManagerServiceInjector;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->shutdown(Z)V

    .line 220
    :cond_7
    throw v0
.end method
