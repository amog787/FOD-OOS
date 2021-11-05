.class Lcom/android/server/UiModeManagerService$11;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 617
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$disableCarModeByCallingPackage$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 684
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$11;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    .line 655
    return-void
.end method

.method public disableCarModeByCallingPackage(ILjava/lang/String;)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 665
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$11;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 673
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 675
    .local v0, "isSystemCaller":Z
    :goto_0
    if-eqz v0, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, p1, -0x3

    .line 677
    .local v1, "carModeFlags":I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 679
    .local v3, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v5, v5, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 682
    :try_start_1
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$1800(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 683
    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$$Lambda$UiModeManagerService$11$hX6U5hjZADuyktvQMUj2cydVQns;

    invoke-direct {v7, p2}, Lcom/android/server/-$$Lambda$UiModeManagerService$11$hX6U5hjZADuyktvQMUj2cydVQns;-><init>(Ljava/lang/String;)V

    .line 684
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 685
    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;->INSTANCE:Lcom/android/server/-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU;

    .line 686
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    .line 687
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 689
    .local v6, "priority":I
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v7, v2, v1, v6, p2}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 690
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v7, v7, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v7, :cond_3

    .line 691
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v7, v2, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 693
    .end local v6    # "priority":I
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    nop

    .line 697
    return-void

    .line 693
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "isSystemCaller":Z
    .end local v1    # "carModeFlags":I
    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .end local p1    # "flags":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 695
    .restart local v0    # "isSystemCaller":Z
    .restart local v1    # "carModeFlags":I
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .restart local p1    # "flags":I
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 815
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1700()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 817
    return-void
.end method

.method public enableCarMode(IILjava/lang/String;)V
    .locals 5
    .param p1, "flags"    # I
    .param p2, "priority"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 621
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$11;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 626
    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    .line 627
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 630
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Enabling car mode with a priority requires permission ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 636
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 637
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 638
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v3, v3, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v3, :cond_3

    .line 639
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 641
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 644
    nop

    .line 645
    return-void

    .line 641
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .end local p1    # "flags":I
    .end local p2    # "priority":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 643
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .restart local p1    # "flags":I
    .restart local p2    # "priority":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 644
    throw v2
.end method

.method public getCurrentModeType()I
    .locals 4

    .line 701
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 703
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 704
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget v3, v3, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v3, v3, 0xf

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    return v3

    .line 705
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 707
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    throw v2
.end method

.method public getCustomNightModeEnd()J
    .locals 4

    .line 890
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$3300(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCustomNightModeStart()J
    .locals 4

    .line 856
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getForceDark()Z
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2200(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 782
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNightMode()I
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 790
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNightModeLocked()Z
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2400(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 804
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUiModeLocked()Z
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2300(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 810
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2500(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2500(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/UiModeManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 811
    return-void
.end method

.method public setCustomNightModeEnd(J)V
    .locals 7
    .param p1, "time"    # J

    .line 895
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$11;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set custom time end, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void

    .line 901
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 902
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 904
    .local v1, "ident":J
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    :try_start_0
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v3
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    .local v3, "newTime":Ljava/time/LocalTime;
    if-nez v3, :cond_1

    .line 917
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    return-void

    .line 906
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$3302(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;

    .line 910
    const-string v4, "OpUiMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", setCustomNightModeEnd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$3300(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "newTime":Ljava/time/LocalTime;
    goto :goto_0

    .line 917
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 914
    :catch_0
    move-exception v3

    .line 915
    .local v3, "e":Ljava/time/DateTimeException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 917
    .end local v3    # "e":Ljava/time/DateTimeException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 918
    nop

    .line 919
    return-void

    .line 917
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 918
    throw v3
.end method

.method public setCustomNightModeStart(J)V
    .locals 7
    .param p1, "time"    # J

    .line 861
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$11;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set custom time start, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void

    .line 867
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 868
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 870
    .local v1, "ident":J
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    :try_start_0
    invoke-static {v3, v4}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v3
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    .local v3, "newTime":Ljava/time/LocalTime;
    if-nez v3, :cond_1

    .line 884
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    return-void

    .line 872
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v3}, Lcom/android/server/UiModeManagerService;->access$3102(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)Ljava/time/LocalTime;

    .line 876
    const-string v4, "OpUiMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", SetCustomNightModeStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$3100(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->access$2000(Lcom/android/server/UiModeManagerService;I)V

    .line 880
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v0}, Lcom/android/server/UiModeManagerService;->access$3200(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "newTime":Ljava/time/LocalTime;
    goto :goto_0

    .line 884
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 881
    :catch_0
    move-exception v3

    .line 882
    .local v3, "e":Ljava/time/DateTimeException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 884
    .end local v3    # "e":Ljava/time/DateTimeException;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    nop

    .line 886
    return-void

    .line 884
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    throw v3
.end method

.method public setForceDark(ZZ)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "from"    # Z

    .line 767
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 768
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 770
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 771
    :try_start_1
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, p1}, Lcom/android/server/UiModeManagerService;->access$2102(Lcom/android/server/UiModeManagerService;Z)Z

    .line 772
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    nop

    .line 776
    return-void

    .line 772
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "user":I
    .end local v1    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .end local p1    # "enabled":Z
    .end local p2    # "from":Z
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 774
    .restart local v0    # "user":I
    .restart local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .restart local p1    # "enabled":Z
    .restart local p2    # "from":Z
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    throw v3
.end method

.method public setNightMode(I)V
    .locals 8
    .param p1, "mode"    # I

    .line 713
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$11;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 726
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_2
    :goto_0
    nop

    .line 729
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 730
    .local v1, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 732
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v4, v4, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 736
    :try_start_1
    const-string v5, "OpUiMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "U:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", SetNightMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", PreMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-eq v5, p1, :cond_8

    .line 740
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-ne v5, v0, :cond_4

    .line 741
    :cond_3
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V

    .line 742
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)V

    .line 745
    :cond_4
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5, p1}, Lcom/android/server/UiModeManagerService;->access$302(Lcom/android/server/UiModeManagerService;I)I

    .line 746
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Z

    .line 747
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5, v1}, Lcom/android/server/UiModeManagerService;->access$2000(Lcom/android/server/UiModeManagerService;I)V

    .line 749
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-ne v5, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    .line 750
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 751
    :cond_6
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V

    .line 752
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_1

    .line 754
    :cond_7
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$500(Lcom/android/server/UiModeManagerService;)V

    .line 757
    :cond_8
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    nop

    .line 761
    return-void

    .line 757
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "user":I
    .end local v2    # "ident":J
    .end local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .end local p1    # "mode":I
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 759
    .restart local v1    # "user":I
    .restart local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .restart local p1    # "mode":I
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    throw v0
.end method

.method public setNightModeActivated(Z)Z
    .locals 8
    .param p1, "active"    # Z

    .line 821
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 823
    .local v1, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 825
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    goto :goto_0

    .line 831
    :cond_0
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v5, :cond_1

    if-eqz p1, :cond_1

    .line 833
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v6}, Lcom/android/server/UiModeManagerService;->access$302(Lcom/android/server/UiModeManagerService;I)I

    goto :goto_2

    .line 834
    :cond_1
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-ne v4, v6, :cond_4

    if-nez p1, :cond_4

    .line 836
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v5}, Lcom/android/server/UiModeManagerService;->access$302(Lcom/android/server/UiModeManagerService;I)I

    goto :goto_2

    .line 826
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V

    .line 827
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    if-nez p1, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-static {v4, v6}, Lcom/android/server/UiModeManagerService;->access$2602(Lcom/android/server/UiModeManagerService;Z)Z

    .line 828
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, p1}, Lcom/android/server/UiModeManagerService;->access$2702(Lcom/android/server/UiModeManagerService;Z)Z

    .line 829
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v1}, Lcom/android/server/UiModeManagerService;->access$2802(Lcom/android/server/UiModeManagerService;I)I

    .line 830
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v1}, Lcom/android/server/UiModeManagerService;->access$2900(Lcom/android/server/UiModeManagerService;I)V

    .line 841
    :cond_4
    :goto_2
    const-string v4, "OpUiMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " SetNightModeActivated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)V

    .line 845
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$3000(Lcom/android/server/UiModeManagerService;)V

    .line 846
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, v1}, Lcom/android/server/UiModeManagerService;->access$2000(Lcom/android/server/UiModeManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    nop

    .line 849
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 847
    return v5

    .line 849
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    nop

    .end local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .end local p1    # "active":Z
    throw v4

    .line 851
    .end local v1    # "user":I
    .end local v2    # "ident":J
    .restart local p0    # "this":Lcom/android/server/UiModeManagerService$11;
    .restart local p1    # "active":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
