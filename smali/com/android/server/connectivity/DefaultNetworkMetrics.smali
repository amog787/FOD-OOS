.class public Lcom/android/server/connectivity/DefaultNetworkMetrics;
.super Ljava/lang/Object;
.source "DefaultNetworkMetrics.java"


# static fields
.field private static final ROLLING_LOG_SIZE:I = 0x40


# instance fields
.field public final creationTimeMs:J

.field private mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventsLog:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentlyValid:Z

.field private mLastTransports:I

.field private mLastValidationTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->creationTimeMs:J

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/DefaultNetworkEvent;

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    .line 64
    iget-wide v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->creationTimeMs:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->newDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 65
    return-void
.end method

.method private static fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p0, "ev"    # Landroid/net/metrics/DefaultNetworkEvent;
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 168
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 169
    .local v0, "lp":Landroid/net/LinkProperties;
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object v1

    iget v1, v1, Landroid/net/Network;->netId:I

    iput v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 170
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v1, v1

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v3

    or-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    .line 171
    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIpv4DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    .line 172
    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    .line 173
    return-void
.end method

.method private logCurrentDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "timeMs"    # J
    .param p3, "oldNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 127
    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 131
    .local v0, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    invoke-virtual {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    .line 132
    iget v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    .line 134
    if-eqz p3, :cond_1

    .line 136
    invoke-static {v0, p3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 137
    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    .line 143
    :cond_1
    iget v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-eqz v1, :cond_2

    .line 144
    iget v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    iput v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method private newDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "timeMs"    # J
    .param p3, "newNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 151
    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent;

    invoke-direct {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(J)V

    .line 152
    .local v0, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    iput-wide p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    .line 154
    if-eqz p3, :cond_0

    .line 155
    invoke-static {v0, p3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 156
    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    .line 157
    iget-boolean v1, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_1

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 159
    iput-wide p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    goto :goto_0

    .line 162
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 164
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 165
    return-void
.end method

.method private static printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V
    .locals 5
    .param p0, "localTimeMs"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "ev"    # Landroid/net/metrics/DefaultNetworkEvent;

    .line 176
    iget-wide v0, p3, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    sub-long v0, p0, v0

    .line 177
    .local v0, "localCreationTimeMs":J
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const-string v3, "%tT.%tL: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private updateValidationTime(J)V
    .locals 5
    .param p1, "timeMs"    # J

    .line 117
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    iget-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iget-wide v3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    sub-long v3, p1, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    .line 118
    return-void
.end method


# virtual methods
.method public declared-synchronized flushEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/DefaultNetworkEvent;

    .line 97
    .local v1, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    nop

    .end local v1    # "ev":Landroid/net/metrics/DefaultNetworkEvent;
    goto :goto_0

    .line 99
    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 95
    .end local p1    # "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listEvents(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 68
    :try_start_0
    const-string v0, "default network events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "localTimeMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 71
    .local v2, "timeMs":J
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/metrics/DefaultNetworkEvent;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 72
    .local v7, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    invoke-static {v0, v1, p1, v7}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V

    .line 71
    .end local v7    # "ev":Landroid/net/metrics/DefaultNetworkEvent;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-virtual {v4, v2, v3}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    .line 77
    iget-boolean v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v4, :cond_1

    .line 78
    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    .line 79
    iput-wide v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    .line 81
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-static {v0, v1, p1, v4}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 67
    .end local v0    # "localTimeMs":J
    .end local v2    # "timeMs":J
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listEventsAsProto()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/metrics/DefaultNetworkEvent;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 90
    .local v4, "ev":Landroid/net/metrics/DefaultNetworkEvent;
    invoke-static {v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    nop

    .end local v4    # "ev":Landroid/net/metrics/DefaultNetworkEvent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 87
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "timeMs"    # J
    .param p3, "newNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "oldNai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logCurrentDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->newDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    .end local p1    # "timeMs":J
    .end local p3    # "newNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local p4    # "oldNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logDefaultNetworkValidity(JZ)V
    .locals 1
    .param p1, "timeMs"    # J
    .param p3, "isValid"    # Z

    monitor-enter p0

    .line 104
    if-nez p3, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    goto :goto_0

    .line 103
    .end local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    .end local p1    # "timeMs":J
    .end local p3    # "isValid":Z
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 110
    .restart local p1    # "timeMs":J
    .restart local p3    # "isValid":Z
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-nez v0, :cond_1

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 112
    iput-wide p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 103
    .end local p1    # "timeMs":J
    .end local p3    # "isValid":Z
    :goto_1
    monitor-exit p0

    throw p1

    .line 114
    .restart local p0    # "this":Lcom/android/server/connectivity/DefaultNetworkMetrics;
    .restart local p1    # "timeMs":J
    .restart local p3    # "isValid":Z
    :cond_1
    :goto_2
    monitor-exit p0

    return-void
.end method
