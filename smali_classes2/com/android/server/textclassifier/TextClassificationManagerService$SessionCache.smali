.class final Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionCache"
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x64


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeathRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    .line 600
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    .line 606
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    .line 607
    return-void
.end method


# virtual methods
.method get(Landroid/view/textclassifier/TextClassificationSessionId;)Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;
    .locals 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 626
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    monitor-exit v0

    return-object v1

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$put$0$TextClassificationManagerService$SessionCache(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->remove(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method put(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V
    .locals 4
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "textClassificationContext"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 611
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    invoke-direct {v2, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;-><init>(Landroid/view/textclassifier/TextClassificationContext;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :try_start_1
    new-instance v1, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$SessionCache$q4fGxygETn80gLCa2MrH-2YXaZA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$SessionCache$q4fGxygETn80gLCa2MrH-2YXaZA;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 616
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 617
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    goto :goto_0

    .line 618
    :catch_0
    move-exception v1

    .line 619
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "TextClassificationManagerService"

    const-string v3, "SessionCache: Failed to link to death"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method remove(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 4
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 633
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    .line 636
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    if-eqz v1, :cond_0

    .line 637
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 639
    :cond_0
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    nop

    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    monitor-exit v0

    .line 642
    return-void

    .line 641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method size()I
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
