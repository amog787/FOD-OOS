.class final Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;
.super Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;
.source "ContentCapturePerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCapturePerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContentCaptureServiceRemoteCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;


# direct methods
.method private constructor <init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-direct {p0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;Lcom/android/server/contentcapture/ContentCapturePerUserService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;
    .param p2, "x1"    # Lcom/android/server/contentcapture/ContentCapturePerUserService$1;

    .line 584
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;-><init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V

    return-void
.end method


# virtual methods
.method public disableSelf()V
    .locals 6

    .line 653
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableSelf()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 657
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content_capture_enabled"

    const-string v4, "0"

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 658
    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v5

    .line 657
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    nop

    .line 662
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 663
    invoke-virtual {v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 662
    invoke-static {v2, v3}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 664
    return-void

    .line 660
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    throw v2
.end method

.method public setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;)V"
        }
    .end annotation

    .line 638
    .local p2, "conditions":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1200(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_1

    .line 639
    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContentCaptureConditions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    if-nez p2, :cond_0

    const-string/jumbo v2, "null"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " conditions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 643
    if-nez p2, :cond_2

    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 646
    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/ArrayMap;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :goto_1
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_2

    .line 592
    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setContentCaptureWhitelist("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    .line 593
    const-string/jumbo v2, "null_packages"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    if-nez p2, :cond_1

    .line 595
    const-string/jumbo v2, "null_activities"

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " activities"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 596
    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->setWhitelist(ILjava/util/List;Ljava/util/List;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSetWhitelistEvent(Landroid/content/ComponentName;Ljava/util/List;Ljava/util/List;)V

    .line 602
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 603
    .local v0, "numSessions":I
    if-gtz v0, :cond_3

    return-void

    .line 606
    :cond_3
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 608
    .local v1, "blacklistedSessions":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_6

    .line 609
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 610
    .local v3, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v4}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$800(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v4, v4, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 611
    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    move-result v5

    iget-object v6, v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v4

    .line 612
    .local v4, "whitelisted":Z
    if-nez v4, :cond_5

    .line 613
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v5}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 614
    .local v5, "sessionId":I
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v6}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$900(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v6, v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v6, :cond_4

    .line 615
    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "marking session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") for un-whitelisting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 608
    .end local v3    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .end local v4    # "whitelisted":Z
    .end local v5    # "sessionId":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 621
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 623
    .local v2, "numBlacklisted":I
    if-gtz v2, :cond_7

    return-void

    .line 625
    :cond_7
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1000(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 626
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_9

    .line 627
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 628
    .restart local v5    # "sessionId":I
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v6}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$1100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v6, v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "un-whitelisting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_8
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v6}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 630
    .local v6, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->setContentCaptureEnabledLocked(Z)V

    .line 626
    .end local v5    # "sessionId":I
    .end local v6    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 632
    .end local v4    # "i":I
    :cond_9
    monitor-exit v3

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "app"    # Landroid/content/ComponentName;
    .param p3, "flushMetrics"    # Landroid/service/contentcapture/FlushMetrics;
    .param p4, "options"    # Landroid/content/ContentCaptureOptions;
    .param p5, "flushReason"    # I

    .line 669
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionFlush(ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 671
    return-void
.end method
