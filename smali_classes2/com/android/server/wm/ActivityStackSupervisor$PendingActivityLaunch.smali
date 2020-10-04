.class Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingActivityLaunch"
.end annotation


# instance fields
.field final callerApp:Lcom/android/server/wm/WindowProcessController;

.field final r:Lcom/android/server/wm/ActivityRecord;

.field final sourceRecord:Lcom/android/server/wm/ActivityRecord;

.field final stack:Lcom/android/server/wm/ActivityStack;

.field final startFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0
    .param p1, "_r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "_sourceRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "_startFlags"    # I
    .param p4, "_stack"    # Lcom/android/server/wm/ActivityStack;
    .param p5, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    .line 444
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 445
    iput p3, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    .line 446
    iput-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/wm/ActivityStack;

    .line 447
    iput-object p5, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/wm/WindowProcessController;

    .line 448
    return-void
.end method


# virtual methods
.method sendErrorResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_0
    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception scheduling crash of failed activity launcher sourceRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
