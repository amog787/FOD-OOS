.class final Lcom/android/server/dreams/DreamManagerService$BinderService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p2, "x1"    # Lcom/android/server/dreams/DreamManagerService$1;

    .line 564
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public awaken()V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 691
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1700(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    nop

    .line 695
    return-void

    .line 693
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    throw v2
.end method

.method public dream()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 654
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1500(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    nop

    .line 658
    return-void

    .line 656
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$800(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DreamManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 570
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p2}, Lcom/android/server/dreams/DreamManagerService;->access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    nop

    .line 574
    return-void

    .line 572
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    throw v2
.end method

.method public finishSelf(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .line 700
    if-eqz p1, :cond_0

    .line 704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 706
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->access$1800(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    nop

    .line 710
    return-void

    .line 708
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    throw v2

    .line 701
    .end local v0    # "ident":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceAmbientDisplayEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 744
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 748
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$2100(Lcom/android/server/dreams/DreamManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    nop

    .line 752
    return-void

    .line 750
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    throw v2
.end method

.method public getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .locals 9
    .param p1, "userId"    # I

    .line 624
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 625
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "getDefaultDreamComponent"

    const/4 v8, 0x0

    move v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 630
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$1300(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    return-object v2

    .line 632
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    throw v2
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .locals 1

    .line 578
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService$BinderService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 9
    .param p1, "userId"    # I

    .line 583
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 584
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 584
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "getDreamComponents"

    const/4 v8, 0x0

    move v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 589
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$1100(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    return-object v2

    .line 591
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 592
    throw v2
.end method

.method public isDreaming()Z
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 640
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 642
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->access$1400(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    return v2

    .line 644
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 645
    throw v2
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentNames"    # [Landroid/content/ComponentName;

    .line 597
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 599
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 600
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 602
    .local v1, "ident":J
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    nop

    .line 606
    return-void

    .line 604
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    throw v3
.end method

.method public setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Landroid/content/ComponentName;

    .line 610
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 611
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 611
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string/jumbo v7, "setDreamComponents"

    const/4 v8, 0x0

    move v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 616
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->access$1200(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    nop

    .line 620
    return-void

    .line 618
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 619
    throw v2
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .line 715
    if-eqz p1, :cond_0

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 721
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->access$1900(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    nop

    .line 725
    return-void

    .line 723
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    throw v2

    .line 716
    .end local v0    # "ident":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 730
    if-eqz p1, :cond_0

    .line 734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 736
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$2000(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    nop

    .line 740
    return-void

    .line 738
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 739
    throw v2

    .line 731
    .end local v0    # "ident":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public testDream(ILandroid/content/ComponentName;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "dream"    # Landroid/content/ComponentName;

    .line 662
    if-eqz p2, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 666
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 666
    const-string/jumbo v7, "testDream"

    move v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 669
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 670
    .local v0, "currentUserId":I
    if-eq p1, v0, :cond_0

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborted attempt to start a test dream while a different  user is active: userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DreamManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void

    .line 677
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 679
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->access$1600(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 682
    nop

    .line 683
    return-void

    .line 681
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 682
    throw v3

    .line 663
    .end local v0    # "currentUserId":I
    .end local v1    # "ident":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
