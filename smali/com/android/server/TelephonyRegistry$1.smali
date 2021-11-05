.class Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    .line 439
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 442
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 453
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 454
    .local v0, "newDefaultPhoneId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 465
    .local v1, "newDefaultSubId":I
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 466
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 467
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_1

    .line 468
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5, v4, v0}, Lcom/android/server/TelephonyRegistry;->access$400(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V

    .line 470
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1
    goto :goto_0

    .line 471
    :cond_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$500(Lcom/android/server/TelephonyRegistry;)V

    .line 472
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->access$602(Lcom/android/server/TelephonyRegistry;I)I

    .line 474
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry;->access$702(Lcom/android/server/TelephonyRegistry;I)I

    .line 475
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$800(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default subscription updated: mDefaultPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 476
    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->access$700(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDefaultSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->access$600(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 472
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 445
    .end local v0    # "newDefaultPhoneId":I
    .end local v1    # "newDefaultSubId":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->access$100(Lcom/android/server/TelephonyRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 446
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .local v1, "sub":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 447
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 448
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$200(Lcom/android/server/TelephonyRegistry;)[Landroid/telephony/CellIdentity;

    move-result-object v3

    aget-object v3, v3, v1

    .line 447
    invoke-virtual {v2, v1, v3}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 450
    .end local v1    # "sub":I
    :cond_4
    nop

    .line 479
    .end local v0    # "numPhones":I
    :goto_2
    return-void
.end method
