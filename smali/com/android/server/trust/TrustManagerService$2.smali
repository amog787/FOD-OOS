.class Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    .line 1338
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1341
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1396
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$2600(Lcom/android/server/trust/TrustManagerService;II)V

    goto/16 :goto_1

    .line 1390
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v3, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v1, v3}, Lcom/android/server/trust/TrustManagerService;->access$2500(Lcom/android/server/trust/TrustManagerService;IIZ)V

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1394
    goto/16 :goto_1

    .line 1352
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;II)V

    .line 1353
    goto/16 :goto_1

    .line 1373
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v3}, Lcom/android/server/trust/TrustManagerService;->access$2300(Lcom/android/server/trust/TrustManagerService;IZ)V

    .line 1374
    goto/16 :goto_1

    .line 1377
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$2400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 1378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$2400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 1379
    .local v1, "usuallyManaged":Landroid/util/SparseBooleanArray;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1382
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1383
    .local v2, "userId":I
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 1384
    .local v3, "value":Z
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1385
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    .line 1381
    .end local v2    # "userId":I
    .end local v3    # "value":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1388
    .end local v0    # "i":I
    :cond_2
    goto :goto_1

    .line 1379
    .end local v1    # "usuallyManaged":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1368
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$102(Lcom/android/server/trust/TrustManagerService;I)I

    .line 1369
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1700(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->updateContentObserver()V

    .line 1370
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1371
    goto :goto_1

    .line 1365
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1366
    goto :goto_1

    .line 1360
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$100(Lcom/android/server/trust/TrustManagerService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1361
    goto :goto_1

    .line 1355
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1357
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1358
    goto :goto_1

    .line 1349
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_3

    move v1, v3

    :cond_3
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$2000(Lcom/android/server/trust/TrustManagerService;ZI)V

    .line 1350
    goto :goto_1

    .line 1346
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$1900(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    .line 1347
    goto :goto_1

    .line 1343
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$1800(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    .line 1344
    nop

    .line 1399
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
