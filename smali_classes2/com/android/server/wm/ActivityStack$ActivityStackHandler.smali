.class Lcom/android/server/wm/ActivityStack$ActivityStackHandler;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityStackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStack;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 339
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    .line 340
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 341
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 345
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 370
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadMode2: send notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    .line 366
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->updateDisableSceneScreenEffectFlag(I)V

    .line 367
    goto :goto_1

    .line 359
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 361
    .local v0, "enabled":Z
    :goto_0
    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 363
    .local v1, "enabledESportMode":Z
    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleEvaluateGameMode(ZZ)V

    .line 364
    .end local v0    # "enabled":Z
    .end local v1    # "enabledESportMode":Z
    goto :goto_1

    .line 355
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 356
    .local v0, "mode":I
    invoke-static {v0}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleEvaluateReadMode(I)V

    .line 357
    .end local v0    # "mode":I
    goto :goto_1

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 348
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 349
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 350
    nop

    .line 375
    :goto_1
    return-void

    .line 349
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
