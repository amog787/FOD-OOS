.class public Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 8338
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 8339
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8340
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 8345
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 8363
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 8364
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, [I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->handleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    .line 8366
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 8367
    goto :goto_0

    .line 8351
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/toast/ToastRecord;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$11400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    .line 8352
    goto :goto_0

    .line 8360
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$11700(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 8361
    goto :goto_0

    .line 8357
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$11600(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 8358
    goto :goto_0

    .line 8354
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$11500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 8355
    goto :goto_0

    .line 8371
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$11800(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 8348
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/toast/ToastRecord;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$11300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/toast/ToastRecord;)V

    .line 8349
    nop

    .line 8375
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V
    .locals 1
    .param p1, "cancelRunnable"    # Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 8385
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8386
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8388
    :cond_0
    return-void
.end method

.method protected scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "removingPackage"    # Z
    .param p2, "changeUserId"    # I
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I

    .line 8392
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 8393
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 8394
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 8395
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 8396
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 8397
    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8398
    return-void
.end method

.method protected scheduleSendRankingUpdate()V
    .locals 2

    .line 8378
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8379
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 8380
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8382
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method
