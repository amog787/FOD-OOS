.class Lcom/android/server/vr/VrManagerService$4;
.super Landroid/service/vr/IVrManager$Stub;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .line 533
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$2700(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "VrManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 628
    :cond_0
    const-string v0, "********* Dump of VrManagerService *********"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VR mode is currently: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$800(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "allowed"

    goto :goto_0

    :cond_1
    const-string v1, "disallowed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persistent VR mode is currently: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$2800(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "enabled"

    goto :goto_1

    :cond_2
    const-string v1, "disabled"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently bound VR listener service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    const-string v2, "None"

    if-nez v1, :cond_3

    .line 634
    move-object v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently bound VR compositor service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$2900(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    if-nez v1, :cond_4

    .line 637
    move-object v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$2900(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string v0, "Previous state transitions:\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const-string v0, "  "

    .line 640
    .local v0, "tab":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1, p2}, Lcom/android/server/vr/VrManagerService;->access$3000(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V

    .line 641
    const-string v1, "\n\nRemote Callbacks:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 643
    .local v1, "i":I
    :goto_4
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    const-string v4, ","

    if-lez v1, :cond_6

    .line 644
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 646
    if-lez v3, :cond_5

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    :cond_5
    move v1, v3

    goto :goto_4

    .line 648
    :cond_6
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 649
    const-string v1, "\n\nPersistent Vr State Remote Callbacks:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 651
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :goto_5
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    if-lez v1, :cond_8

    .line 652
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 654
    if-lez v3, :cond_7

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    :cond_7
    move v1, v3

    goto :goto_5

    .line 656
    :cond_8
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 657
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    const-string v4, "Installed VrListenerService components:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v4}, Lcom/android/server/vr/VrManagerService;->access$3100(Lcom/android/server/vr/VrManagerService;)I

    move-result v4

    .line 660
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v5}, Lcom/android/server/vr/VrManagerService;->access$3200(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/vr/EnabledComponentsObserver;->getInstalled(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 661
    .local v5, "installed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_7

    .line 664
    :cond_9
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 665
    .local v7, "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    .end local v7    # "n":Landroid/content/ComponentName;
    goto :goto_6

    .line 662
    :cond_a
    :goto_7
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    :cond_b
    const-string v6, "Enabled VrListenerService components:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v6}, Lcom/android/server/vr/VrManagerService;->access$3200(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v6

    .line 671
    .local v6, "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-nez v7, :cond_c

    goto :goto_9

    .line 674
    :cond_c
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 675
    .restart local v7    # "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    .end local v7    # "n":Landroid/content/ComponentName;
    goto :goto_8

    .line 672
    :cond_d
    :goto_9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    :cond_e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    const-string v1, "********* End of VrManagerService Dump *********"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public getPersistentVrModeEnabled()Z
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$2300(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public getVr2dDisplayId()I
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$2400(Lcom/android/server/vr/VrManagerService;)I

    move-result v0

    return v0
.end method

.method public getVrModeState()Z
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$2200(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 3
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .line 537
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 539
    if-eqz p1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$1800(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    .line 544
    return-void

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 3
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 559
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 561
    if-eqz p1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$2000(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 566
    return-void

    .line 562
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAndBindCompositor(Ljava/lang/String;)V
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;

    .line 613
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 615
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 614
    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$2500(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V

    .line 616
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 595
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$600(Lcom/android/server/vr/VrManagerService;Z)V

    .line 597
    return-void
.end method

.method public setStandbyEnabled(Z)V
    .locals 2
    .param p1, "standby"    # Z

    .line 620
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$2600(Lcom/android/server/vr/VrManagerService;Z)V

    .line 622
    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 2
    .param p1, "vr2dDisplayProp"    # Landroid/app/Vr2dDisplayProperties;

    .line 602
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerService;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    .line 604
    return-void
.end method

.method public unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 3
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .line 548
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 550
    if-eqz p1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$1900(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    .line 555
    return-void

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 3
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 570
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const-string v1, "android.permission.ACCESS_VR_MANAGER"

    const-string v2, "android.permission.ACCESS_VR_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 572
    if-eqz p1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$2100(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 577
    return-void

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
