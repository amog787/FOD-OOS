.class Lcom/android/server/display/WifiDisplayAdapter$9;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WifiDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .line 455
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
    .locals 3
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 563
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    .line 565
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 566
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 567
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 569
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 572
    :cond_0
    monitor-exit v0

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .line 539
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    .line 541
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 543
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 544
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 545
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 547
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 548
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 550
    :cond_1
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
    .locals 3
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 511
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    .line 514
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 515
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 516
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 518
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 519
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 521
    :cond_1
    monitor-exit v0

    .line 522
    return-void

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayConnectionFailed()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 528
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 530
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 531
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 533
    :cond_1
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayDisconnected()V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 581
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 582
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 584
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 585
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 587
    :cond_1
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .locals 2
    .param p1, "sessionInfo"    # Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 555
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1402(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 557
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 558
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFeatureStateChanged(I)V
    .locals 2
    .param p1, "featureState"    # I

    .line 458
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$400(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$402(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 461
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 463
    :cond_0
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanFinished()V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 504
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 506
    :cond_0
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanResults([Landroid/hardware/display/WifiDisplay;)V
    .locals 6
    .param p1, "availableDisplays"    # [Landroid/hardware/display/WifiDisplay;

    .line 478
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    .line 482
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 485
    .local v1, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-nez v1, :cond_1

    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 486
    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 487
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v5

    if-eq v4, v5, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v1, v4

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 490
    .end local v3    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 491
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 492
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 493
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 494
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 496
    .end local v1    # "changed":Z
    :cond_2
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanStarted()V
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 471
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 473
    :cond_0
    monitor-exit v0

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
