.class Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
.super Ljava/lang/Object;
.source "DataLoaderManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DataLoaderManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderServiceConnection"
.end annotation


# instance fields
.field mDataLoader:Landroid/content/pm/IDataLoader;

.field final mId:I

.field final mListener:Landroid/content/pm/IDataLoaderStatusListener;

.field final synthetic this$0:Lcom/android/server/pm/DataLoaderManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DataLoaderManagerService;ILandroid/content/pm/IDataLoaderStatusListener;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "listener"    # Landroid/content/pm/IDataLoaderStatusListener;

    .line 167
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 169
    iput-object p3, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    .line 170
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    .line 171
    return-void
.end method

.method private append()Z
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v1}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    .line 231
    .local v1, "bound":Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    .line 232
    monitor-exit v0

    return v2

    .line 234
    :cond_0
    if-eqz v1, :cond_1

    .line 236
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v3}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v3, v4, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 239
    monitor-exit v0

    return v2

    .line 240
    .end local v1    # "bound":Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private callListener(I)V
    .locals 2
    .param p1, "status"    # I

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IDataLoaderStatusListener;->onStatusChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 258
    :cond_0
    :goto_0
    return-void
.end method

.method private remove()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v1}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v1}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 248
    :cond_0
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-interface {v0, v1}, Landroid/content/pm/IDataLoader;->destroy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 219
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    .line 222
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$100(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    goto :goto_1

    .line 223
    :catch_1
    move-exception v0

    .line 225
    :goto_1
    invoke-direct {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->remove()V

    .line 226
    return-void
.end method

.method getDataLoader()Landroid/content/pm/IDataLoader;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    return-object v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataLoader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->callListener(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->destroy()V

    .line 200
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataLoader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed to start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->callListener(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->destroy()V

    .line 207
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 175
    invoke-static {p2}, Landroid/content/pm/IDataLoader$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    .line 176
    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->append()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$100(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->callListener(I)V

    .line 186
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataLoader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " disconnected, but will try to recover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->callListener(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->destroy()V

    .line 193
    return-void
.end method
