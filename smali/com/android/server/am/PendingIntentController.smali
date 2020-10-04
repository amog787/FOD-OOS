.class public Lcom/android/server/am/PendingIntentController;
.super Ljava/lang/Object;
.source "PendingIntentController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field final mH:Landroid/os/Handler;

.field final mIntentSenderRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/am/PendingIntentRecord$Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mUserController:Lcom/android/server/am/UserController;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/am/UserController;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "userController"    # Lcom/android/server/am/UserController;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 80
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 81
    iput-object p2, p0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    .line 82
    return-void
.end method

.method private clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;)V"
        }
    .end annotation

    .line 322
    .local p2, "pir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    .line 323
    return-void
.end method

.method private handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p1, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 307
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/IResultReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_1

    .line 310
    :catch_0
    move-exception v2

    .line 307
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 317
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 318
    return-void
.end method

.method public static synthetic lambda$pDmmJDvS20vSAAXh9qdzbN0P8N0(Lcom/android/server/am/PendingIntentController;Landroid/os/RemoteCallbackList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/PendingIntentController;->handlePendingIntentCancelled(Landroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public static synthetic lambda$sPmaborOkBSSEP2wiimxXw-eYDQ(Lcom/android/server/am/PendingIntentController;Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PendingIntentController;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V
    .locals 3
    .param p1, "rec"    # Lcom/android/server/am/PendingIntentRecord;

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 297
    invoke-virtual {p1}, Lcom/android/server/am/PendingIntentRecord;->detachCancelListenersLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 298
    .local v0, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    if-eqz v0, :cond_0

    .line 299
    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentController$pDmmJDvS20vSAAXh9qdzbN0P8N0;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$pDmmJDvS20vSAAXh9qdzbN0P8N0;

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 301
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 303
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;

    .line 219
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .local v1, "rec":Lcom/android/server/am/PendingIntentRecord;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/high16 v4, 0x10000000

    .line 226
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 225
    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 227
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 236
    .end local v2    # "uid":I
    nop

    .line 237
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 238
    .end local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    return-void

    .line 228
    .restart local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .restart local v2    # "uid":I
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: cancelIntentSender() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed to cancel package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .end local p1    # "sender":Landroid/content/IIntentSender;
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    .end local v2    # "uid":I
    .end local v3    # "msg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .restart local p1    # "sender":Landroid/content/IIntentSender;
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .end local p1    # "sender":Landroid/content/IIntentSender;
    throw v3

    .line 238
    .end local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .restart local p1    # "sender":Landroid/content/IIntentSender;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    .locals 4
    .param p1, "rec"    # Lcom/android/server/am/PendingIntentRecord;
    .param p2, "cleanActivity"    # Z

    .line 242
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 244
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 249
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpPendingIntents(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    const/4 v1, 0x0

    .line 329
    .local v1, "printed":Z
    :try_start_0
    const-string v2, "ACTIVITY MANAGER PENDING INTENTS (dumpsys activity intents)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 333
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 334
    .local v2, "byPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v3, "weakRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 336
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 337
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 339
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 340
    .local v6, "rec":Lcom/android/server/am/PendingIntentRecord;
    :goto_1
    if-nez v6, :cond_1

    .line 341
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    goto :goto_0

    .line 344
    :cond_1
    if-eqz p3, :cond_2

    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 345
    goto :goto_0

    .line 347
    :cond_2
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 348
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    if-nez v7, :cond_3

    .line 349
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 350
    iget-object v8, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    nop

    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v6    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    goto :goto_0

    .line 354
    :cond_4
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 355
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 356
    .local v7, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    const/4 v1, 0x1

    .line 357
    const-string v8, "  * "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " items"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    move v8, v5

    .local v8, "j":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 360
    const-string v9, "    #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 361
    if-eqz p2, :cond_5

    .line 362
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/PendingIntentRecord;

    const-string v10, "      "

    invoke-virtual {v9, p1, v10}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 359
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 354
    .end local v7    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v8    # "j":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 366
    .end local v6    # "i":I
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 367
    const/4 v1, 0x1

    .line 368
    const-string v6, "  * WEAK REFS:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    nop

    .local v5, "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 370
    const-string v6, "    #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 369
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 375
    .end local v2    # "byPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v3    # "weakRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v5    # "i":I
    :cond_8
    if-nez v1, :cond_9

    .line 376
    const-string v2, "  (nothing)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    .end local v1    # "printed":Z
    :cond_9
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIntentSender(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;
    .locals 21
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "intents"    # [Landroid/content/Intent;
    .param p9, "resolvedTypes"    # [Ljava/lang/String;
    .param p10, "flags"    # I
    .param p11, "bOptions"    # Landroid/os/Bundle;

    .line 93
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v14, p8

    iget-object v15, v1, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 94
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager_MU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntentSender(): uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    const/4 v0, 0x0

    const/4 v13, 0x1

    if-eqz v14, :cond_1

    .line 99
    move v3, v0

    .local v3, "i":I
    :goto_0
    array-length v4, v14

    if-ge v3, v4, :cond_1

    .line 100
    aget-object v4, v14, v3

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setDefusable(Z)V

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "i":I
    :cond_1
    move-object/from16 v12, p11

    invoke-static {v12, v13}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    const/high16 v3, 0x20000000

    and-int v3, p10, v3

    if-eqz v3, :cond_2

    move v3, v13

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    move/from16 v16, v3

    .line 106
    .local v16, "noCreate":Z
    const/high16 v3, 0x10000000

    and-int v3, p10, v3

    if-eqz v3, :cond_3

    move v3, v13

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    move/from16 v17, v3

    .line 107
    .local v17, "cancelCurrent":Z
    const/high16 v3, 0x8000000

    and-int v3, p10, v3

    if-eqz v3, :cond_4

    move v0, v13

    .line 108
    .local v0, "updateCurrent":Z
    :cond_4
    const v3, -0x38000001

    and-int v18, p10, v3

    .line 111
    .end local p10    # "flags":I
    .local v18, "flags":I
    :try_start_1
    new-instance v19, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 113
    invoke-static/range {p11 .. p11}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v20

    move-object/from16 v3, v19

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, v18

    move-object/from16 v12, v20

    move/from16 v20, v13

    move/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/android/server/am/PendingIntentRecord$Key;-><init>(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V

    move-object/from16 v3, v19

    .line 115
    .local v3, "key":Lcom/android/server/am/PendingIntentRecord$Key;
    iget-object v4, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 116
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_3

    :cond_5
    move-object v6, v5

    .line 117
    .local v6, "rec":Lcom/android/server/am/PendingIntentRecord;
    :goto_3
    if-eqz v6, :cond_b

    .line 118
    if-nez v17, :cond_a

    .line 119
    if-eqz v0, :cond_9

    .line 120
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v7, :cond_7

    .line 121
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v14, :cond_6

    .line 122
    array-length v8, v14

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v14, v8

    goto :goto_4

    :cond_6
    move-object v8, v5

    .line 121
    :goto_4
    invoke-virtual {v7, v8}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 124
    :cond_7
    if-eqz v14, :cond_8

    .line 125
    array-length v5, v14

    add-int/lit8 v5, v5, -0x1

    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    aput-object v7, v14, v5

    .line 126
    iget-object v5, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v14, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 127
    iget-object v5, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v7, p9

    :try_start_2
    iput-object v7, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_5

    .line 129
    :cond_8
    move-object/from16 v7, p9

    iget-object v8, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v5, v8, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 130
    iget-object v8, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v5, v8, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_5

    .line 119
    :cond_9
    move-object/from16 v7, p9

    .line 133
    :goto_5
    monitor-exit v15

    return-object v6

    .line 135
    :cond_a
    move-object/from16 v7, p9

    invoke-direct {v1, v6}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 136
    iget-object v5, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 117
    :cond_b
    move-object/from16 v7, p9

    .line 138
    :goto_6
    if-eqz v16, :cond_c

    .line 139
    monitor-exit v15

    return-object v6

    .line 141
    :cond_c
    new-instance v5, Lcom/android/server/am/PendingIntentRecord;

    invoke-direct {v5, v1, v3, v2}, Lcom/android/server/am/PendingIntentRecord;-><init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V

    .line 142
    .end local v6    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .local v5, "rec":Lcom/android/server/am/PendingIntentRecord;
    iget-object v6, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v8, v5, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit v15

    return-object v5

    .line 144
    .end local v0    # "updateCurrent":Z
    .end local v3    # "key":Lcom/android/server/am/PendingIntentRecord$Key;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v5    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v16    # "noCreate":Z
    .end local v17    # "cancelCurrent":Z
    :catchall_0
    move-exception v0

    move-object/from16 v7, p9

    goto :goto_7

    .end local v18    # "flags":I
    .restart local p10    # "flags":I
    :catchall_1
    move-exception v0

    move-object/from16 v7, p9

    move/from16 v18, p10

    .end local p10    # "flags":I
    .restart local v18    # "flags":I
    :goto_7
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7
.end method

.method onActivityManagerInternalAdded()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 87
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .locals 3
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 255
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 256
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    .line 261
    .local v1, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-boolean v2, v1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 262
    .local v2, "isCancelled":Z
    if-nez v2, :cond_1

    .line 263
    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 265
    .end local v1    # "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    if-eqz v2, :cond_2

    .line 268
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p2, v0, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 272
    :cond_2
    :goto_0
    return-void

    .line 265
    .end local v2    # "isCancelled":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method removePendingIntentsForPackage(Ljava/lang/String;IIZ)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "doIt"    # Z

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 157
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 161
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 164
    .local v3, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-nez v3, :cond_1

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 166
    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 169
    .local v4, "pir":Lcom/android/server/am/PendingIntentRecord;
    if-nez v4, :cond_2

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 171
    goto :goto_0

    .line 173
    :cond_2
    if-nez p1, :cond_3

    .line 175
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_6

    .line 177
    goto :goto_0

    .line 180
    :cond_3
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p3, :cond_4

    .line 182
    goto :goto_0

    .line 184
    :cond_4
    const/4 v5, -0x1

    if-eq p2, v5, :cond_5

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_5

    .line 186
    goto :goto_0

    .line 194
    :cond_5
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 197
    goto :goto_0

    .line 200
    :cond_6
    if-nez p4, :cond_7

    .line 201
    const/4 v5, 0x1

    monitor-exit v1

    return v5

    .line 203
    :cond_7
    const/4 v0, 0x1

    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 205
    invoke-direct {p0, v4}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 206
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v5, :cond_8

    .line 207
    sget-object v5, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

    iget-object v6, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v7, v4, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v5, p0, v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 210
    .local v5, "m":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    .end local v3    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "pir":Lcom/android/server/am/PendingIntentRecord;
    .end local v5    # "m":Landroid/os/Message;
    :cond_8
    goto :goto_0

    .line 213
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :cond_9
    monitor-exit v1

    .line 215
    return v0

    .line 213
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "whitelistToken"    # Landroid/os/IBinder;
    .param p3, "duration"    # J

    .line 286
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/am/PendingIntentRecord;->setWhitelistDurationLocked(Landroid/os/IBinder;J)V

    .line 292
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    .locals 2
    .param p1, "sender"    # Landroid/content/IIntentSender;
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 276
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 281
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
