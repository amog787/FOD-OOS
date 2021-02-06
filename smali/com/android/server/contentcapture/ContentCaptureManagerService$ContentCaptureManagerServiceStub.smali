.class final Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
.super Landroid/view/contentcapture/IContentCaptureManager$Stub;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContentCaptureManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 601
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 758
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 760
    :cond_0
    const/4 v0, 0x1

    .line 761
    .local v0, "showHistory":Z
    if-eqz p3, :cond_6

    .line 762
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p3, v3

    .line 763
    .local v4, "arg":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x417d0228

    const/4 v8, 0x1

    if-eq v6, v7, :cond_3

    const v7, 0x4f7504e1

    if-eq v6, v7, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v6, "--help"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v8

    goto :goto_1

    :cond_3
    const-string v6, "--no-history"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v2

    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v8, :cond_4

    .line 771
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring invalid dump arg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 768
    :cond_4
    const-string v1, "Usage: dumpsys content_capture [--no-history]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    return-void

    .line 765
    :cond_5
    const/4 v0, 0x0

    .line 766
    nop

    .line 762
    .end local v4    # "arg":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 776
    :cond_6
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 777
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 778
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    const-string v1, "Requests history: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-nez v1, :cond_7

    .line 781
    const-string v1, "disabled by device config"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 782
    :cond_7
    if-eqz v0, :cond_8

    .line 783
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 784
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 785
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 787
    :cond_8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 789
    :goto_3
    return-void

    .line 778
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public finishSession(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 627
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 630
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$800(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 632
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->finishSessionLocked(I)V

    .line 633
    .end local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v1

    .line 634
    return-void

    .line 633
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 738
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so;

    invoke-direct {v1, p0, p1}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$Qe-DhsP4OR9GyoofNgVlcOk-1so;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    return-void

    .line 742
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 744
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 745
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 746
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContentCaptureConditionsLocked(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 748
    .local v2, "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 753
    goto :goto_1

    .line 751
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceComponentName(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 748
    .end local v2    # "conditions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 638
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 640
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 641
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1000(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 642
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 643
    .local v2, "connectedServiceComponentName":Landroid/content/ComponentName;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 648
    goto :goto_0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send service component name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 643
    .end local v2    # "connectedServiceComponentName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 717
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$6vI15KqJwo_ruaAABrGMvkwVRt4;

    invoke-direct {v1, p0}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$6vI15KqJwo_ruaAABrGMvkwVRt4;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    return-void

    .line 721
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 723
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 725
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    .line 726
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceSettingsActivityLocked()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 727
    .local v2, "componentName":Landroid/content/ComponentName;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 732
    goto :goto_0

    .line 730
    :catch_0
    move-exception v1

    .line 731
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceSettingsIntent(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 727
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .locals 5
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 699
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v2, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$vyDTyUUAt356my5WVtp7QPYv5gY;

    invoke-direct {v2, p0}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$vyDTyUUAt356my5WVtp7QPYv5gY;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    monitor-exit v0

    return-void

    .line 705
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 706
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 707
    .local v1, "enabled":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 712
    goto :goto_2

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send isContentCaptureFeatureEnabled(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 707
    .end local v1    # "enabled":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getContentCaptureConditions$2$ContentCaptureManagerService$ContentCaptureManagerServiceStub(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 738
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2900(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getServiceSettingsActivity$1$ContentCaptureManagerService$ContentCaptureManagerServiceStub()V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    return-void
.end method

.method public synthetic lambda$isContentCaptureFeatureEnabled$0$ContentCaptureManagerService$ContentCaptureManagerServiceStub()V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string/jumbo v1, "isContentCaptureFeatureEnabled()"

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3000(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 797
    return-void
.end method

.method public removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 653
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1200(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 657
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 658
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 659
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeDataLocked(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 660
    .end local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v1

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    .locals 6
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "clientAdapter"    # Landroid/view/contentcapture/IDataShareWriteAdapter;

    .line 666
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1500(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    .line 671
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 672
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 673
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1700(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 675
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 676
    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 690
    :cond_0
    new-instance v3, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {v3, p1, p2, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;-><init>(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onDataSharedLocked(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V

    .line 693
    .end local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    return-void

    .line 678
    .restart local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "serviceName":Ljava/lang/String;
    const/16 v4, 0xe

    .line 681
    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-static {v4, v3, v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 682
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    .end local v3    # "serviceName":Ljava/lang/String;
    goto :goto_1

    .line 684
    :catch_0
    move-exception v3

    .line 685
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to send error message to client"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    return-void

    .line 693
    .end local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public startSession(Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    .locals 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "sessionId"    # I
    .param p4, "flags"    # I
    .param p5, "result"    # Lcom/android/internal/os/IResultReceiver;

    .line 607
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 611
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    .line 612
    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;

    move-result-object v1

    .line 614
    .local v1, "activityPresentationInfo":Landroid/content/pm/ActivityPresentationInfo;
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 615
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 616
    .local v2, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string/jumbo v4, "startSession()"

    invoke-static {v3, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$600(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 617
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {p5, v3, v4}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 618
    monitor-exit v9

    return-void

    .line 620
    :cond_0
    nop

    .line 621
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 620
    move-object v3, p1

    move-object v4, v1

    move v5, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->startSessionLocked(Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V

    .line 622
    .end local v2    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    monitor-exit v9

    .line 623
    return-void

    .line 622
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
