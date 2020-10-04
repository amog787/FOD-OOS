.class public Lcom/android/server/backup/transport/TransportClientManager;
.super Ljava/lang/Object;
.source "TransportClientManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransportClientManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTransportClientsCallerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransportClientsCreated:I

.field private final mTransportClientsLock:Ljava/lang/Object;

.field private final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transportStats"    # Lcom/android/server/backup/transport/TransportStats;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCreated:I

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCallerMap:Ljava/util/Map;

    .line 51
    iput p1, p0, Lcom/android/server/backup/transport/TransportClientManager;->mUserId:I

    .line 52
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportClientManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 54
    return-void
.end method

.method private getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Lcom/android/server/backup/transport/TransportClient;
    .locals 10
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "bindIntent"    # Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    new-instance v9, Lcom/android/server/backup/transport/TransportClient;

    iget v2, p0, Lcom/android/server/backup/transport/TransportClientManager;->mUserId:I

    iget-object v3, p0, Lcom/android/server/backup/transport/TransportClientManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iget v1, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCreated:I

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    move-object v5, p3

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/backup/transport/TransportClient;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 105
    .local v1, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget v2, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCreated:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCreated:I

    .line 107
    const/4 v2, 0x3

    const-string v3, "TransportClientManager"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {v4, p2, v5}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v2, v3, v4}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    monitor-exit v0

    return-object v1

    .line 112
    .end local v1    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 6
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p1, p2}, Lcom/android/server/backup/transport/TransportClient;->unbind(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportClient;->markAsDisposed()V

    .line 126
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TransportClientManager"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disposing of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-static {v3, p2, v4}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v1, v2, v3}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport clients created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCreated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current transport clients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportClient;

    .line 140
    .local v2, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportClientManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 141
    .local v3, "caller":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Lcom/android/server/backup/transport/TransportClient;->getLogBuffer()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 143
    .local v5, "logEntry":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .end local v5    # "logEntry":Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v2    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v3    # "caller":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 146
    :cond_1
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .locals 2
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "caller"    # Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/backup/transport/TransportClientManager;->getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    return-object v1
.end method

.method public getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .locals 2
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/backup/transport/TransportClientManager;->getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    return-object v1
.end method
