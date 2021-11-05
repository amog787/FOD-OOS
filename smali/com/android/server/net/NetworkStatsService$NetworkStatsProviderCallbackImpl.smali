.class Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
.super Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStatsProviderCallbackImpl"
.end annotation


# instance fields
.field final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mIfaceStats:Landroid/net/NetworkStats;

.field final mProvider:Landroid/net/netstats/provider/INetworkStatsProvider;

.field private final mProviderStatsLock:Ljava/lang/Object;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field final mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mTag:Ljava/lang/String;

.field private final mUidStats:Landroid/net/NetworkStats;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/netstats/provider/INetworkStatsProvider;Ljava/util/concurrent/Semaphore;Landroid/net/INetworkManagementEventObserver;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/net/netstats/provider/INetworkStatsProvider;
    .param p3, "semaphore"    # Ljava/util/concurrent/Semaphore;
    .param p4, "alertObserver"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/netstats/provider/INetworkStatsProvider;",
            "Ljava/util/concurrent/Semaphore;",
            "Landroid/net/INetworkManagementEventObserver;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2036
    .local p5, "cbList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;>;"
    invoke-direct {p0}, Landroid/net/netstats/provider/INetworkStatsProviderCallback$Stub;-><init>()V

    .line 2023
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProviderStatsLock:Ljava/lang/Object;

    .line 2025
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mIfaceStats:Landroid/net/NetworkStats;

    .line 2028
    new-instance v0, Landroid/net/NetworkStats;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mUidStats:Landroid/net/NetworkStats;

    .line 2037
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    .line 2038
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProvider:Landroid/net/netstats/provider/INetworkStatsProvider;

    .line 2039
    invoke-interface {p2}, Landroid/net/netstats/provider/INetworkStatsProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2040
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 2041
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 2042
    iput-object p5, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2043
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 2091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": binderDied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2093
    return-void
.end method

.method public getCachedStats(I)Landroid/net/NetworkStats;
    .locals 4
    .param p1, "how"    # I

    .line 2047
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProviderStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2049
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2054
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mUidStats:Landroid/net/NetworkStats;

    .line 2055
    .local v1, "stats":Landroid/net/NetworkStats;
    goto :goto_0

    .line 2057
    .end local v1    # "stats":Landroid/net/NetworkStats;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .end local p1    # "how":I
    throw v1

    .line 2051
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .restart local p1    # "how":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mIfaceStats:Landroid/net/NetworkStats;

    .line 2052
    .restart local v1    # "stats":Landroid/net/NetworkStats;
    nop

    .line 2061
    :goto_0
    invoke-virtual {v1}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2062
    .end local v1    # "stats":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyAlertReached()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2079
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    const-string v1, "globalAlert"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    return-void
.end method

.method public notifyLimitReached()V
    .locals 2

    .line 2084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": onLimitReached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    .line 2086
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onStatsProviderLimitReached(Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method public notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "ifaceStats"    # Landroid/net/NetworkStats;
    .param p3, "uidStats"    # Landroid/net/NetworkStats;

    .line 2070
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProviderStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2071
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mIfaceStats:Landroid/net/NetworkStats;

    invoke-virtual {v1, p2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    goto :goto_0

    .line 2073
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2072
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mUidStats:Landroid/net/NetworkStats;

    invoke-virtual {v1, p3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 2073
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2075
    return-void

    .line 2073
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregister()V
    .locals 2

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": unregister"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2099
    return-void
.end method
