.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field private final mClient:Lcom/android/internal/view/IInputMethodClient;

.field private final mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p1, "perUserData"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1078
    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 1079
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1084
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1087
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 1088
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->removeClientLocked(Lcom/android/internal/view/IInputMethodClient;)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1089
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_0

    .line 1090
    monitor-exit v0

    return-void

    .line 1093
    :cond_0
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1094
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 1095
    iput-object v3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    .line 1097
    :cond_1
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1099
    :try_start_1
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1101
    goto :goto_0

    .line 1100
    :catch_0
    move-exception v2

    .line 1102
    :goto_0
    :try_start_2
    iput-object v3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    .line 1104
    :cond_2
    iput-object v3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    .line 1105
    const/4 v2, 0x5

    iput v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1106
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v3, v2, :cond_3

    goto :goto_1

    .line 1109
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData$ClientDeathRecipient;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v2, v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mCurrentInputMethod:Lcom/android/internal/inputmethod/IMultiClientInputMethod;

    iget v3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClientId:I

    invoke-interface {v2, v3}, Lcom/android/internal/inputmethod/IMultiClientInputMethod;->removeClient(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1112
    goto :goto_1

    .line 1110
    :catch_1
    move-exception v2

    .line 1115
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :goto_1
    :try_start_4
    monitor-exit v0

    .line 1116
    return-void

    .line 1115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
