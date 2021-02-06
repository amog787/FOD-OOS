.class final Lcom/android/server/appop/AppOpsService$ActiveCallback;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActiveCallback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

.field final mCallingPid:I

.field final mCallingUid:I

.field final mWatchingUid:I

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsActiveCallback;
    .param p3, "watchingUid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I

    .line 1347
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 1349
    iput p3, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 1350
    iput p4, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingUid:I

    .line 1351
    iput p5, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingPid:I

    .line 1353
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    goto :goto_0

    .line 1354
    :catch_0
    move-exception v0

    .line 1357
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1380
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 1381
    return-void
.end method

.method destroy()V
    .locals 2

    .line 1375
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1376
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1362
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActiveCallback{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    const-string v1, " watchinguid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1366
    const-string v1, " from uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1368
    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1370
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
