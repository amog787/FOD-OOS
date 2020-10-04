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

    .line 443
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
    .locals 3
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 551
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    .line 553
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 554
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 555
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 557
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 560
    :cond_0
    monitor-exit v0

    .line 561
    return-void

    .line 560
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

    .line 527
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    .line 529
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 531
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 532
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 533
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 535
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 536
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 538
    :cond_1
    monitor-exit v0

    .line 539
    return-void

    .line 538
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

    .line 499
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    .line 502
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 503
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 504
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 506
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 507
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 509
    :cond_1
    monitor-exit v0

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayConnectionFailed()V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 516
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 518
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

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

.method public onDisplayDisconnected()V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 569
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 570
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1102(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 572
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 573
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 575
    :cond_1
    monitor-exit v0

    .line 576
    return-void

    .line 575
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

    .line 543
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1402(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 545
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 546
    monitor-exit v0

    .line 547
    return-void

    .line 546
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

    .line 446
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$400(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$402(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 449
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 451
    :cond_0
    monitor-exit v0

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanFinished()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 492
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 494
    :cond_0
    monitor-exit v0

    .line 495
    return-void

    .line 494
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

    .line 466
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    move-object p1, v1

    .line 470
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 473
    .local v1, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-nez v1, :cond_1

    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 474
    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 475
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

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    .end local v3    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 479
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 480
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 481
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 482
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 484
    .end local v1    # "changed":Z
    :cond_2
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScanStarted()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 459
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$9;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 461
    :cond_0
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
