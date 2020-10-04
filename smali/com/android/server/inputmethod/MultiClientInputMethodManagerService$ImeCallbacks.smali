.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;
.super Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImeCallbacks"
.end annotation


# instance fields
.field private final mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V
    .locals 1
    .param p1, "perUserData"    # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1231
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 1232
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1233
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1234
    return-void
.end method


# virtual methods
.method public acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "inputMethodSession"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "multiSessionInputMethodSession"    # Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;
    .param p4, "writeChannel"    # Landroid/view/InputChannel;

    .line 1284
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1286
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1287
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_0

    .line 1288
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    monitor-exit v0

    return-void

    .line 1291
    :cond_0
    iget v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1305
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1294
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    nop

    .line 1299
    const/4 v2, 0x3

    :try_start_2
    iput v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1300
    iput-object p4, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    .line 1301
    iput-object p2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    .line 1302
    iput-object p3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    .line 1303
    nop

    .line 1308
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :goto_0
    monitor-exit v0

    .line 1309
    return-void

    .line 1295
    .restart local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catch_0
    move-exception v2

    .line 1297
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-void

    .line 1308
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public createInputMethodWindowToken(I)Landroid/os/IBinder;
    .locals 7
    .param p1, "displayId"    # I

    .line 1239
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1243
    .local v1, "numTokens":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1244
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    .line 1245
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 1247
    .local v3, "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    if-ne v4, p1, :cond_0

    .line 1248
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    monitor-exit v0

    return-object v4

    .line 1243
    .end local v3    # "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1252
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1253
    .local v2, "token":Landroid/os/Binder;
    sget-object v3, Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;->INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;

    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v5, 0x7db

    .line 1255
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1254
    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 1253
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1256
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    new-instance v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    invoke-direct {v4, v2, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;-><init>(Landroid/os/Binder;I)V

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1257
    monitor-exit v0

    return-object v2

    .line 1258
    .end local v1    # "numTokens":I
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteInputMethodWindowToken(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1264
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1267
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1268
    .local v1, "numTokens":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1269
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    .line 1270
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 1271
    .local v3, "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    if-ne v4, p1, :cond_0

    .line 1272
    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v4, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1273
    goto :goto_1

    .line 1268
    .end local v3    # "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1276
    .end local v1    # "numTokens":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 1277
    return-void

    .line 1276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidAllowedOnDisplay(II)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "uid"    # I

    .line 1341
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v0

    return v0
.end method

.method public reportImeWindowTarget(IILandroid/os/IBinder;)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "targetWindowHandle"    # I
    .param p3, "imeWindowToken"    # Landroid/os/IBinder;

    .line 1315
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1317
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1318
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_0

    .line 1319
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    monitor-exit v0

    return-void

    .line 1322
    :cond_0
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;

    .line 1323
    .local v3, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    iget v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I

    if-ne v4, p2, :cond_1

    .line 1324
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowToken:Landroid/os/IBinder;

    .line 1333
    .end local v3    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    :cond_1
    goto :goto_0

    .line 1335
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_2
    monitor-exit v0

    .line 1336
    return-void

    .line 1335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setActive(IZ)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "active"    # Z

    .line 1347
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1349
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1350
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_0

    .line 1351
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1355
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1358
    nop

    .line 1359
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :try_start_2
    monitor-exit v0

    .line 1360
    return-void

    .line 1356
    .restart local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catch_0
    move-exception v2

    .line 1357
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-void

    .line 1359
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
