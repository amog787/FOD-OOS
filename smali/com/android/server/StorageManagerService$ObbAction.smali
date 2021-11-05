.class abstract Lcom/android/server/StorageManagerService$ObbAction;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbAction"
.end annotation


# instance fields
.field mObbState:Lcom/android/server/StorageManagerService$ObbState;

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;

    .line 4140
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4141
    iput-object p2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 4142
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 4148
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleExecute()V
    :try_end_0
    .catch Lcom/android/server/StorageManagerService$ObbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4151
    goto :goto_0

    .line 4149
    :catch_0
    move-exception v0

    .line 4150
    .local v0, "e":Lcom/android/server/StorageManagerService$ObbException;
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    .line 4152
    .end local v0    # "e":Lcom/android/server/StorageManagerService$ObbException;
    :goto_0
    return-void
.end method

.method abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/StorageManagerService$ObbException;
        }
    .end annotation
.end method

.method protected notifyObbStateChange(I)V
    .locals 3
    .param p1, "status"    # I

    .line 4162
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4167
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v1, v1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v2, v2, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v0, v1, v2, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4170
    goto :goto_0

    .line 4168
    :catch_0
    move-exception v0

    .line 4169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StorageManagerService"

    const-string v2, "StorageEventListener went away while calling onObbStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 4163
    :cond_1
    :goto_1
    return-void
.end method

.method protected notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V
    .locals 1
    .param p1, "e"    # Lcom/android/server/StorageManagerService$ObbException;

    .line 4157
    const-string v0, "StorageManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4158
    iget v0, p1, Lcom/android/server/StorageManagerService$ObbException;->status:I

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V

    .line 4159
    return-void
.end method
