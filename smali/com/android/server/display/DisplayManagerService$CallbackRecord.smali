.class final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;I)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p4, "callingUid"    # I

    .line 1907
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1909
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 1910
    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 1913
    iput p4, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 1915
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1919
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p0}, Lcom/android/server/display/DisplayManagerService;->access$1600(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 1923
    return-void
.end method

.method public notifyDisplayEventAsync(IIZ)Z
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "event"    # I
    .param p3, "isDelay"    # Z

    .line 1937
    const/4 v0, 0x1

    if-nez p3, :cond_0

    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v1}, Lcom/android/server/am/OpBGFrozenInjector;->isDeliverDisplayChange(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1938
    const/4 v0, 0x0

    return v0

    .line 1944
    :cond_0
    iget v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    const/16 v3, 0x23f0

    invoke-static {v3, v1, v2}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 1946
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v1, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V

    .line 1949
    invoke-static {v3}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1950
    return v0

    .line 1952
    :catch_0
    move-exception v1

    .line 1953
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that displays changed, assuming it died."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 1959
    return v0
.end method
