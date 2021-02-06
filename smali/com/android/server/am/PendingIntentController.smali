.class public Lcom/android/server/am/PendingIntentController;
.super Ljava/lang/Object;
.source "PendingIntentController.java"


# static fields
.field private static final RECENT_N:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mConstants:Lcom/android/server/am/ActivityManagerConstants;

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

.field private final mIntentsPerUid:Landroid/util/SparseIntArray;

.field final mLock:Ljava/lang/Object;

.field private final mRecentIntentsPerUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUserController:Lcom/android/server/am/UserController;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "userController"    # Lcom/android/server/am/UserController;
    .param p3, "constants"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 89
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    .line 101
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 102
    iput-object p2, p0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    .line 103
    iput-object p3, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 104
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

    .line 350
    .local p2, "pir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearPendingResultForActivity(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    .line 351
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

    .line 334
    .local p1, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 335
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 337
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/IResultReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_1

    .line 338
    :catch_0
    move-exception v2

    .line 335
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 345
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 346
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

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 323
    invoke-virtual {p1}, Lcom/android/server/am/PendingIntentRecord;->detachCancelListenersLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 324
    .local v0, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    if-eqz v0, :cond_0

    .line 325
    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentController$pDmmJDvS20vSAAXh9qdzbN0P8N0;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$pDmmJDvS20vSAAXh9qdzbN0P8N0;

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 327
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    const-class v1, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerInternal;

    .line 330
    .local v1, "ami":Lcom/android/server/AlarmManagerInternal;
    new-instance v2, Landroid/app/PendingIntent;

    invoke-direct {v2, p1}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-interface {v1, v2}, Lcom/android/server/AlarmManagerInternal;->remove(Landroid/app/PendingIntent;)V

    .line 331
    return-void
.end method


# virtual methods
.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .locals 6
    .param p1, "sender"    # Landroid/content/IIntentSender;

    .line 244
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 245
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .local v1, "rec":Lcom/android/server/am/PendingIntentRecord;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/high16 v4, 0x10000000

    .line 251
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 250
    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 252
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 261
    .end local v2    # "uid":I
    nop

    .line 262
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 263
    .end local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    return-void

    .line 253
    .restart local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .restart local v2    # "uid":I
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: cancelIntentSender() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
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

    .line 256
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .end local p1    # "sender":Landroid/content/IIntentSender;
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    .end local v2    # "uid":I
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v1    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .restart local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .restart local p1    # "sender":Landroid/content/IIntentSender;
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/am/PendingIntentController;
    .end local p1    # "sender":Landroid/content/IIntentSender;
    throw v3

    .line 263
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

    .line 267
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 271
    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 272
    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

    iget-object v2, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 275
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .locals 4
    .param p1, "pir"    # Lcom/android/server/am/PendingIntentRecord;

    .line 465
    iget v0, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 466
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 467
    .local v1, "idx":I
    if-ltz v1, :cond_2

    .line 468
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 470
    .local v2, "newCount":I
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    add-int/lit8 v3, v3, -0xa

    if-ne v2, v3, :cond_0

    .line 471
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 473
    :cond_0
    if-nez v2, :cond_1

    .line 474
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 479
    .end local v2    # "newCount":I
    :cond_2
    :goto_0
    return-void
.end method

.method dumpPendingIntents(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    const/4 v1, 0x0

    .line 357
    .local v1, "printed":Z
    :try_start_0
    const-string v2, "ACTIVITY MANAGER PENDING INTENTS (dumpsys activity intents)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 361
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 362
    .local v2, "byPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v3, "weakRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 364
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 365
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 366
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 367
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 368
    .local v6, "rec":Lcom/android/server/am/PendingIntentRecord;
    :goto_1
    if-nez v6, :cond_1

    .line 369
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    goto :goto_0

    .line 372
    :cond_1
    if-eqz p3, :cond_2

    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 373
    goto :goto_0

    .line 375
    :cond_2
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 376
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    if-nez v7, :cond_3

    .line 377
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 378
    iget-object v8, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    nop

    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v6    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    goto :goto_0

    .line 382
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 383
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 384
    .local v6, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    const/4 v1, 0x1

    .line 385
    const-string v7, "  * "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " items"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 388
    const-string v8, "    #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 389
    if-eqz p2, :cond_5

    .line 390
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/PendingIntentRecord;

    const-string v9, "      "

    invoke-virtual {v8, p1, v9}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 387
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 382
    .end local v6    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v7    # "j":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 394
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 395
    const/4 v1, 0x1

    .line 396
    const-string v5, "  * WEAK REFS:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 398
    const-string v6, "    #"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 397
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 403
    .end local v2    # "byPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v3    # "weakRefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    .end local v5    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 404
    .local v2, "sizeOfIntentsPerUid":I
    if-lez v2, :cond_9

    .line 405
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_9

    .line 406
    const-string v4, "  * UID: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 408
    const-string v4, " total: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 413
    .end local v3    # "i":I
    :cond_9
    if-nez v1, :cond_a

    .line 414
    const-string v3, "  (nothing)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    .end local v1    # "printed":Z
    .end local v2    # "sizeOfIntentsPerUid":I
    :cond_a
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;
    .locals 22
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "intents"    # [Landroid/content/Intent;
    .param p10, "resolvedTypes"    # [Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "bOptions"    # Landroid/os/Bundle;

    .line 115
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v15, p9

    iget-object v14, v1, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 116
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "ActivityManager_MU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntentSender(): uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    move-object/from16 v7, p10

    move/from16 v19, p11

    move-object/from16 v21, v14

    goto/16 :goto_8

    .line 120
    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-eqz v15, :cond_1

    .line 121
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v15

    if-ge v3, v4, :cond_1

    .line 122
    aget-object v4, v15, v3

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setDefusable(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    .end local v3    # "i":I
    :cond_1
    move-object/from16 v13, p12

    :try_start_2
    invoke-static {v13, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 127
    const/high16 v3, 0x20000000

    and-int v3, p11, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    move/from16 v16, v3

    .line 128
    .local v16, "noCreate":Z
    const/high16 v3, 0x10000000

    and-int v3, p11, v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    move/from16 v17, v3

    .line 129
    .local v17, "cancelCurrent":Z
    const/high16 v3, 0x8000000

    and-int v3, p11, v3

    if-eqz v3, :cond_4

    move v4, v0

    :cond_4
    move/from16 v18, v4

    .line 130
    .local v18, "updateCurrent":Z
    const v3, -0x38000001

    and-int v19, p11, v3

    .line 133
    .end local p11    # "flags":I
    .local v19, "flags":I
    :try_start_3
    new-instance v20, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 135
    invoke-static/range {p12 .. p12}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v3, v20

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, v19

    move-object/from16 v13, v21

    move-object/from16 v21, v14

    move/from16 v14, p5

    :try_start_4
    invoke-direct/range {v3 .. v14}, Lcom/android/server/am/PendingIntentRecord$Key;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V

    move-object/from16 v3, v20

    .line 137
    .local v3, "key":Lcom/android/server/am/PendingIntentRecord$Key;
    iget-object v4, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 138
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_4

    :cond_5
    move-object v6, v5

    .line 139
    .local v6, "rec":Lcom/android/server/am/PendingIntentRecord;
    :goto_4
    if-eqz v6, :cond_b

    .line 140
    if-nez v17, :cond_a

    .line 141
    if-eqz v18, :cond_9

    .line 142
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v7, :cond_7

    .line 143
    iget-object v7, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v15, :cond_6

    .line 144
    array-length v8, v15

    sub-int/2addr v8, v0

    aget-object v8, v15, v8

    goto :goto_5

    :cond_6
    move-object v8, v5

    .line 143
    :goto_5
    invoke-virtual {v7, v8}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 146
    :cond_7
    if-eqz v15, :cond_8

    .line 147
    array-length v5, v15

    sub-int/2addr v5, v0

    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    aput-object v0, v15, v5

    .line 148
    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v15, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 149
    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v7, p10

    :try_start_5
    iput-object v7, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_6

    .line 151
    :cond_8
    move-object/from16 v7, p10

    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 152
    iget-object v0, v6, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iput-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    goto :goto_6

    .line 141
    :cond_9
    move-object/from16 v7, p10

    .line 155
    :goto_6
    monitor-exit v21

    return-object v6

    .line 157
    :cond_a
    move-object/from16 v7, p10

    invoke-direct {v1, v6}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 158
    iget-object v0, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v1, v6}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    goto :goto_7

    .line 139
    :cond_b
    move-object/from16 v7, p10

    .line 161
    :goto_7
    if-eqz v16, :cond_c

    .line 162
    monitor-exit v21

    return-object v6

    .line 164
    :cond_c
    new-instance v0, Lcom/android/server/am/PendingIntentRecord;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/PendingIntentRecord;-><init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V

    .line 165
    .end local v6    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .local v0, "rec":Lcom/android/server/am/PendingIntentRecord;
    iget-object v5, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v1, v0}, Lcom/android/server/am/PendingIntentController;->incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 167
    monitor-exit v21

    return-object v0

    .line 168
    .end local v0    # "rec":Lcom/android/server/am/PendingIntentRecord;
    .end local v3    # "key":Lcom/android/server/am/PendingIntentRecord$Key;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v16    # "noCreate":Z
    .end local v17    # "cancelCurrent":Z
    .end local v18    # "updateCurrent":Z
    :catchall_1
    move-exception v0

    move-object/from16 v7, p10

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v7, p10

    move-object/from16 v21, v14

    goto :goto_8

    .end local v19    # "flags":I
    .restart local p11    # "flags":I
    :catchall_3
    move-exception v0

    move-object/from16 v7, p10

    move-object/from16 v21, v14

    move/from16 v19, p11

    .end local p11    # "flags":I
    .restart local v19    # "flags":I
    :goto_8
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_8
.end method

.method incrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V
    .locals 8
    .param p1, "pir"    # Lcom/android/server/am/PendingIntentRecord;

    .line 425
    iget v0, p1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 426
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 427
    .local v1, "idx":I
    const/4 v2, 0x1

    .line 428
    .local v2, "newCount":I
    if-ltz v1, :cond_0

    .line 429
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 430
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 432
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mIntentsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 436
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 437
    .local v3, "lowBound":I
    const/4 v5, 0x0

    .line 438
    .local v5, "recentHistory":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Ljava/lang/String;>;"
    if-ne v2, v3, :cond_1

    .line 439
    new-instance v6, Lcom/android/internal/util/RingBuffer;

    const-class v7, Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    move-object v5, v6

    .line 440
    iget-object v6, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v6, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 441
    :cond_1
    if-le v2, v3, :cond_2

    iget-object v6, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v6, v6, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    if-gt v2, v6, :cond_2

    .line 442
    iget-object v6, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/android/internal/util/RingBuffer;

    .line 444
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 445
    return-void

    .line 448
    :cond_3
    iget-object v6, p1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v6}, Lcom/android/server/am/PendingIntentRecord$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 451
    iget-object v6, p0, Lcom/android/server/am/PendingIntentController;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v6, v6, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    if-ne v2, v6, :cond_4

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many PendingIntent created for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", recent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v5}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    const-string v6, "ActivityManager"

    invoke-static {v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v4, p0, Lcom/android/server/am/PendingIntentController;->mRecentIntentsPerUid:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 458
    :cond_4
    return-void
.end method

.method onActivityManagerInternalAdded()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
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

    .line 281
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    .line 287
    .local v1, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-boolean v2, v1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 288
    .local v2, "isCancelled":Z
    if-nez v2, :cond_1

    .line 289
    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 291
    .end local v1    # "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    if-eqz v2, :cond_2

    .line 294
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p2, v0, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 298
    :cond_2
    :goto_0
    return-void

    .line 291
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

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 181
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    .line 185
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 186
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 188
    .local v3, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-nez v3, :cond_1

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 190
    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 193
    .local v4, "pir":Lcom/android/server/am/PendingIntentRecord;
    if-nez v4, :cond_2

    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 195
    goto :goto_0

    .line 197
    :cond_2
    if-nez p1, :cond_3

    .line 199
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_6

    .line 201
    goto :goto_0

    .line 204
    :cond_3
    iget v5, v4, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p3, :cond_4

    .line 206
    goto :goto_0

    .line 208
    :cond_4
    const/4 v5, -0x1

    if-eq p2, v5, :cond_5

    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v5, p2, :cond_5

    .line 210
    goto :goto_0

    .line 218
    :cond_5
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 221
    goto :goto_0

    .line 224
    :cond_6
    if-nez p4, :cond_7

    .line 225
    const/4 v5, 0x1

    monitor-exit v1

    return v5

    .line 227
    :cond_7
    const/4 v0, 0x1

    .line 228
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 229
    invoke-direct {p0, v4}, Lcom/android/server/am/PendingIntentController;->makeIntentSenderCanceled(Lcom/android/server/am/PendingIntentRecord;)V

    .line 230
    invoke-virtual {p0, v4}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 231
    iget-object v5, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eqz v5, :cond_8

    .line 232
    sget-object v5, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

    iget-object v6, v4, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v7, v4, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-static {v5, p0, v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 235
    .local v5, "m":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v3    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "pir":Lcom/android/server/am/PendingIntentRecord;
    .end local v5    # "m":Landroid/os/Message;
    :cond_8
    goto :goto_0

    .line 238
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;>;"
    :cond_9
    monitor-exit v1

    .line 240
    return v0

    .line 238
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

    .line 312
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markAsSentFromNotification(): not a PendingIntentRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/am/PendingIntentRecord;->setWhitelistDurationLocked(Landroid/os/IBinder;J)V

    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 318
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

    .line 302
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
