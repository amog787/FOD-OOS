.class final Lcom/android/server/appop/AppOpsService$ClientState;
.super Landroid/os/Binder;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ClientState"
.end annotation


# instance fields
.field final mAppToken:Landroid/os/IBinder;

.field final mPid:I

.field final mStartedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$Op;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 704
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    .line 705
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mPid:I

    .line 708
    instance-of v0, p2, Landroid/os/Binder;

    if-nez v0, :cond_0

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 715
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 727
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 728
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 729
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/appop/AppOpsService;->finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V

    .line 728
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 731
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    monitor-exit v0

    .line 733
    return-void

    .line 732
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientState{mAppToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
