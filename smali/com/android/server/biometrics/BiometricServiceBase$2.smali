.class Lcom/android/server/biometrics/BiometricServiceBase$2;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 541
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v0, :cond_0

    .line 546
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "currentClient":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$200(Lcom/android/server/biometrics/BiometricServiceBase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.oneplus.applocker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 556
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$400(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    .line 557
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 558
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "topPackage":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 560
    invoke-static {v4}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/biometrics/ClientMonitor;->isAlreadyDone()Z

    move-result v4

    if-nez v4, :cond_2

    .line 561
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping background authentication, top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " currentClient: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v4}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v0    # "currentClient":Ljava/lang/String;
    .end local v1    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "topPackage":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 553
    .restart local v0    # "currentClient":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 566
    .end local v0    # "currentClient":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$2;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to get running tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
