.class Lcom/android/server/content/ContentService$OnChangeRunnable;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnChangeRunnable"
.end annotation


# instance fields
.field private mCancelRunnable:Ljava/lang/Runnable;

.field private mObserverCall:Lcom/android/server/content/ContentService$ObserverCall;

.field private mUri:Landroid/net/Uri;

.field private mUserHandle:I

.field final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method public constructor <init>(Lcom/android/server/content/ContentService;Lcom/android/server/content/ContentService$ObserverCall;Landroid/net/Uri;I)V
    .locals 0
    .param p2, "observerCall"    # Lcom/android/server/content/ContentService$ObserverCall;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "userhandle"    # I

    .line 316
    iput-object p1, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->this$0:Lcom/android/server/content/ContentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mObserverCall:Lcom/android/server/content/ContentService$ObserverCall;

    .line 318
    iput-object p3, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mUri:Landroid/net/Uri;

    .line 319
    iput p4, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mUserHandle:I

    .line 320
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 325
    :try_start_0
    new-instance v0, Lcom/android/server/content/ContentService$CancelRunnable;

    iget-object v1, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->this$0:Lcom/android/server/content/ContentService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/content/ContentService$CancelRunnable;-><init>(Lcom/android/server/content/ContentService;Lcom/android/server/content/ContentService$OnChangeRunnable;)V

    .line 326
    .local v0, "cancelRunnable":Lcom/android/server/content/ContentService$CancelRunnable;
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 327
    const-string v1, "ContentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start onChange in working thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mObserverCall:Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v3, v3, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v1}, Lcom/android/server/content/ContentService;->access$300(Lcom/android/server/content/ContentService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    iget-object v1, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mObserverCall:Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v1, v1, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    iget-object v2, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mObserverCall:Lcom/android/server/content/ContentService$ObserverCall;

    iget-boolean v2, v2, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    iget-object v3, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mUri:Landroid/net/Uri;

    iget v4, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mUserHandle:I

    invoke-interface {v1, v2, v3, v4}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 331
    iget-object v1, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v1}, Lcom/android/server/content/ContentService;->access$300(Lcom/android/server/content/ContentService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v0    # "cancelRunnable":Lcom/android/server/content/ContentService$CancelRunnable;
    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v1}, Lcom/android/server/content/ContentService;->access$400(Lcom/android/server/content/ContentService;)Lcom/android/server/content/ContentService$ObserverNode;

    move-result-object v1

    monitor-enter v1

    .line 334
    :try_start_1
    const-string v2, "ContentService"

    const-string v3, "Found dead observer, removing"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v2, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mObserverCall:Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v2, v2, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 336
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/content/ContentService$OnChangeRunnable;->mObserverCall:Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v3, v3, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 337
    invoke-static {v3}, Lcom/android/server/content/ContentService$ObserverNode;->access$500(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v3

    .line 338
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 339
    .local v4, "numList":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 340
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 341
    .local v6, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v7, v6, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v7}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, v2, :cond_1

    .line 342
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 343
    add-int/lit8 v5, v5, -0x1

    .line 344
    add-int/lit8 v4, v4, -0x1

    .line 339
    .end local v6    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v4    # "numList":I
    .end local v5    # "j":I
    :cond_2
    monitor-exit v1

    .line 349
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 347
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
