.class final Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDevicesChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/IInputDevicesChangedListener;

.field private final mPid:I

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;I)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;
    .param p4, "uid"    # I

    .line 2243
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2245
    iput p2, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    .line 2246
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    .line 2250
    iput p4, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mUid:I

    .line 2252
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 2259
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;I)V

    .line 2260
    return-void
.end method

.method public notifyInputDevicesChanged([I)V
    .locals 3
    .param p1, "info"    # [I

    .line 2268
    :try_start_0
    iget v0, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mUid:I

    const-string/jumbo v1, "notifyInputDevicesChanged"

    invoke-static {v0, v1}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 2273
    iget v0, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mUid:I

    iget v1, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    const/16 v2, 0x238c

    invoke-static {v2, v0, v1}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 2275
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputDevicesChangedListener;->onInputDevicesChanged([I)V

    .line 2278
    invoke-static {v2}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2284
    goto :goto_0

    .line 2280
    :catch_0
    move-exception v0

    .line 2281
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that input devices changed, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2283
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->binderDied()V

    .line 2285
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
