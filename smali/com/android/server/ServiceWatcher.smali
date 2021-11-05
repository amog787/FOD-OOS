.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$ServiceInfo;,
        Lcom/android/server/ServiceWatcher$BlockingBinderRunner;,
        Lcom/android/server/ServiceWatcher$BinderRunner;
    }
.end annotation


# static fields
.field private static final BLOCKING_BINDER_TIMEOUT_MS:J = 0x7530L

.field private static final D:Z

.field private static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field private static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final TAG:Ljava/lang/String; = "ServiceWatcher"


# instance fields
.field private volatile mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private final mOnBind:Lcom/android/server/ServiceWatcher$BinderRunner;

.field private final mOnUnbind:Ljava/lang/Runnable;

.field private volatile mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-string v0, "ServiceWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/ServiceWatcher$BinderRunner;Ljava/lang/Runnable;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "onBind"    # Lcom/android/server/ServiceWatcher$BinderRunner;
    .param p5, "onUnbind"    # Ljava/lang/Runnable;
    .param p6, "enableOverlayResId"    # I
    .param p7, "nonOverlayPackageResId"    # I

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 198
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 203
    .local v1, "enableOverlay":Z
    if-nez v1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    :cond_0
    iput-object p4, p0, Lcom/android/server/ServiceWatcher;->mOnBind:Lcom/android/server/ServiceWatcher$BinderRunner;

    .line 208
    iput-object p5, p0, Lcom/android/server/ServiceWatcher;->mOnUnbind:Ljava/lang/Runnable;

    .line 210
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 212
    sget-object v2, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    .line 213
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    .line 214
    return-void
.end method

.method private getLogPrefix()Ljava/lang/String;
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onBestServiceChanged(Z)V
    .locals 6
    .param p1, "forceRebind"    # Z

    .line 294
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    const v2, 0x10100080

    iget v3, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 301
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    .line 302
    .local v1, "bestServiceInfo":Lcom/android/server/ServiceWatcher$ServiceInfo;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 303
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget v5, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/ServiceWatcher$ServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    .line 304
    .local v4, "serviceInfo":Lcom/android/server/ServiceWatcher$ServiceInfo;
    invoke-virtual {v4, v1}, Lcom/android/server/ServiceWatcher$ServiceInfo;->compareTo(Lcom/android/server/ServiceWatcher$ServiceInfo;)I

    move-result v5

    if-lez v5, :cond_1

    .line 305
    move-object v1, v4

    .line 307
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Lcom/android/server/ServiceWatcher$ServiceInfo;
    :cond_1
    goto :goto_1

    .line 309
    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/ServiceWatcher$ServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 310
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/ServiceWatcher;->rebind(Lcom/android/server/ServiceWatcher$ServiceInfo;)V

    .line 312
    :cond_4
    return-void
.end method

.method private rebind(Lcom/android/server/ServiceWatcher$ServiceInfo;)V
    .locals 8
    .param p1, "newServiceInfo"    # Lcom/android/server/ServiceWatcher$ServiceInfo;

    .line 315
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    sget-object v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher$ServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ServiceWatcher"

    if-nez v0, :cond_2

    .line 318
    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] unbinding from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 323
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v0, v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/ServiceWatcher;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 324
    sget-object v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    .line 327
    :cond_2
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    .line 328
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    sget-object v4, Lcom/android/server/ServiceWatcher$ServiceInfo;->NONE:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v4}, Lcom/android/server/ServiceWatcher$ServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    return-void

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v0, v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 334
    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v0, :cond_5

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " binding to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v1, v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 339
    .local v0, "bindIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const v5, 0x40000005    # 2.0000012f

    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget v1, v1, Lcom/android/server/ServiceWatcher$ServiceInfo;->userId:I

    .line 341
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 339
    move-object v3, v0

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    .line 342
    return-void
.end method

.method private runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 468
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 470
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 476
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 477
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    const-wide/16 v1, 0x7530

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 485
    :catch_1
    move-exception v1

    .line 487
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public getBoundService()Lcom/android/server/ServiceWatcher$ServiceInfo;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    return-object v0
.end method

.method public synthetic lambda$register$0$ServiceWatcher()V
    .locals 1

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    return-void
.end method

.method public synthetic lambda$runOnBinder$1$ServiceWatcher(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .locals 3
    .param p1, "runner"    # Lcom/android/server/ServiceWatcher$BinderRunner;

    .line 418
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 419
    return-void

    .line 423
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/android/server/ServiceWatcher$BinderRunner;->run(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceWatcher"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public synthetic lambda$runOnBinderBlocking$2$ServiceWatcher(Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)Ljava/lang/Object;
    .locals 3
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "runner"    # Lcom/android/server/ServiceWatcher$BlockingBinderRunner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 449
    return-object p1

    .line 453
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    invoke-interface {p2, v0}, Lcom/android/server/ServiceWatcher$BlockingBinderRunner;->run(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 454
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceWatcher"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    return-object p1
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 385
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 387
    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    .line 392
    return-void
.end method

.method onPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v0, v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    iget-object v0, v0, Lcom/android/server/ServiceWatcher$ServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    .local v0, "currentPackageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    .line 410
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 346
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 349
    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    const-string v1, "ServiceWatcher"

    if-eqz v0, :cond_2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connected to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_2
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    .line 354
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mOnBind:Lcom/android/server/ServiceWatcher$BinderRunner;

    if-eqz v0, :cond_3

    .line 356
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/server/ServiceWatcher$BinderRunner;->run(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    goto :goto_2

    .line 357
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exception running on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 367
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 370
    return-void

    .line 373
    :cond_1
    sget-boolean v0, Lcom/android/server/ServiceWatcher;->D:Z

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " disconnected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    .line 378
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mOnUnbind:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 379
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 381
    :cond_3
    return-void
.end method

.method onUserSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 395
    iput p1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    .line 397
    return-void
.end method

.method onUserUnlocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 400
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->onBestServiceChanged(Z)V

    .line 403
    :cond_0
    return-void
.end method

.method public register()Z
    .locals 11

    .line 222
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x1c0000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    return v3

    .line 228
    :cond_0
    new-instance v0, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 249
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/ServiceWatcher$1;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v6, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    move-object v8, v0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 280
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 282
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$ServiceWatcher$K66HPJls7ga1t3t859fKACfAgZc;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$ServiceWatcher$K66HPJls7ga1t3t859fKACfAgZc;-><init>(Lcom/android/server/ServiceWatcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return v4
.end method

.method public final runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .locals 2
    .param p1, "runner"    # Lcom/android/server/ServiceWatcher$BinderRunner;

    .line 417
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;-><init>(Lcom/android/server/ServiceWatcher;Lcom/android/server/ServiceWatcher$BinderRunner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method

.method public final runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/ServiceWatcher$BlockingBinderRunner<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    .local p1, "runner":Lcom/android/server/ServiceWatcher$BlockingBinderRunner;, "Lcom/android/server/ServiceWatcher$BlockingBinderRunner<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;-><init>(Lcom/android/server/ServiceWatcher;Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServiceInfo:Lcom/android/server/ServiceWatcher$ServiceInfo;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher$ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
