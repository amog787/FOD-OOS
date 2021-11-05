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

    .line 1265
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IMultiClientInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 1266
    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1267
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1268
    return-void
.end method


# virtual methods
.method public acceptClient(ILcom/android/internal/view/IInputMethodSession;Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;Landroid/view/InputChannel;)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "inputMethodSession"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "multiSessionInputMethodSession"    # Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;
    .param p4, "writeChannel"    # Landroid/view/InputChannel;

    .line 1318
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1319
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1320
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1321
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_0

    .line 1322
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    monitor-exit v0

    return-void

    .line 1325
    :cond_0
    iget v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1339
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

    .line 1328
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1332
    nop

    .line 1333
    const/4 v2, 0x3

    :try_start_2
    iput v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mState:I

    .line 1334
    iput-object p4, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mWriteChannel:Landroid/view/InputChannel;

    .line 1335
    iput-object p2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mInputMethodSession:Lcom/android/internal/view/IInputMethodSession;

    .line 1336
    iput-object p3, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mMSInputMethodSession:Lcom/android/internal/inputmethod/IMultiClientInputMethodSession;

    .line 1337
    nop

    .line 1342
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :goto_0
    monitor-exit v0

    .line 1343
    return-void

    .line 1329
    .restart local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catch_0
    move-exception v2

    .line 1331
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-void

    .line 1342
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

    .line 1273
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1276
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1277
    .local v1, "numTokens":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1278
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    .line 1279
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 1281
    .local v3, "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mDisplayId:I

    if-ne v4, p1, :cond_0

    .line 1282
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    monitor-exit v0

    return-object v4

    .line 1277
    .end local v3    # "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1286
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1287
    .local v2, "token":Landroid/os/Binder;
    sget-object v3, Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;->INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;

    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v5, 0x7db

    .line 1289
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1288
    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    .line 1287
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1290
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    new-instance v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    invoke-direct {v4, v2, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;-><init>(Landroid/os/Binder;I)V

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1291
    monitor-exit v0

    return-object v2

    .line 1292
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

    .line 1298
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1301
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v1, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1302
    .local v1, "numTokens":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1303
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v3, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    .line 1304
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;

    .line 1305
    .local v3, "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;->mToken:Landroid/os/Binder;

    if-ne v4, p1, :cond_0

    .line 1306
    iget-object v4, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v4, v4, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mDisplayIdToImeWindowTokenMap:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1307
    goto :goto_1

    .line 1302
    .end local v3    # "tokenInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1310
    .end local v1    # "numTokens":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 1311
    return-void

    .line 1310
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

    .line 1376
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidAllowedOnDisplay(II)Z

    move-result v0

    return v0
.end method

.method public reportImeWindowTarget(IILandroid/os/IBinder;)V
    .locals 6
    .param p1, "clientId"    # I
    .param p2, "targetWindowHandle"    # I
    .param p3, "imeWindowToken"    # Landroid/os/IBinder;

    .line 1349
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1351
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1352
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_0

    .line 1353
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    monitor-exit v0

    return-void

    .line 1356
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

    .line 1357
    .local v3, "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    iget v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowHandle:I

    if-ne v4, p2, :cond_1

    .line 1358
    iget-object v4, v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;->mWindowToken:Landroid/os/IBinder;

    .line 1365
    .local v4, "targetWindowToken":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mIWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v5, p3, v4}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 1368
    .end local v3    # "windowInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;
    .end local v4    # "targetWindowToken":Landroid/os/IBinder;
    :cond_1
    goto :goto_0

    .line 1370
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :cond_2
    monitor-exit v0

    .line 1371
    return-void

    .line 1370
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

    .line 1382
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    iget-object v0, v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1383
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;->mPerUserData:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 1384
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->getClientFromIdLocked(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;

    move-result-object v1

    .line 1385
    .local v1, "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    if-nez v1, :cond_0

    .line 1386
    const-string v2, "MultiClientInputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1390
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;->mClient:Lcom/android/internal/view/IInputMethodClient;

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1393
    nop

    .line 1394
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :try_start_2
    monitor-exit v0

    .line 1395
    return-void

    .line 1391
    .restart local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    :catch_0
    move-exception v2

    .line 1392
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-void

    .line 1394
    .end local v1    # "clientInfo":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
