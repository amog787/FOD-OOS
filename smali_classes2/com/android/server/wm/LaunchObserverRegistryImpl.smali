.class Lcom/android/server/wm/LaunchObserverRegistryImpl;
.super Ljava/lang/Object;
.source "LaunchObserverRegistryImpl.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityMetricsLaunchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method private handleOnActivityLaunchCancelled([B)V
    .locals 2
    .param p1, "activity"    # [B

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 166
    .local v1, "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunchCancelled([B)V

    .line 164
    .end local v1    # "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private handleOnActivityLaunchFinished([BJ)V
    .locals 2
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 175
    .local v1, "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunchFinished([BJ)V

    .line 173
    .end local v1    # "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private handleOnActivityLaunched([BI)V
    .locals 2
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 157
    .local v1, "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunched([BI)V

    .line 155
    .end local v1    # "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private handleOnIntentFailed()V
    .locals 2

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 147
    .local v1, "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    invoke-interface {v1}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onIntentFailed()V

    .line 145
    .end local v1    # "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private handleOnIntentStarted(Landroid/content/Intent;J)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 139
    .local v1, "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onIntentStarted(Landroid/content/Intent;J)V

    .line 137
    .end local v1    # "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private handleOnReportFullyDrawn([BJ)V
    .locals 2
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 184
    .local v1, "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onReportFullyDrawn([BJ)V

    .line 182
    .end local v1    # "o":Lcom/android/server/wm/ActivityMetricsLaunchObserver;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private handleRegisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method private handleUnregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public static synthetic lambda$850Ez4IkbH192NuVFW_l12sZL_E(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleUnregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public static synthetic lambda$FhvLqBbd_XMsJK45WV5Mlt8JSYM(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnReportFullyDrawn([BJ)V

    return-void
.end method

.method public static synthetic lambda$KukKmVpn5W_1xSV6Dnp8wW2H2Ks(Lcom/android/server/wm/LaunchObserverRegistryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnIntentFailed()V

    return-void
.end method

.method public static synthetic lambda$QcawcFcJtEX4EhYptq_Vb4j368Y(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunchFinished([BJ)V

    return-void
.end method

.method public static synthetic lambda$UGY1OclnLIQLMEL9B55qjERFf4o(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunched([BI)V

    return-void
.end method

.method public static synthetic lambda$lAGPwfsXJvBWsyG2rbEfo3sTv34(Lcom/android/server/wm/LaunchObserverRegistryImpl;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunchCancelled([B)V

    return-void
.end method

.method public static synthetic lambda$pWUDt4Ot3BWLJOTAhXMkkhHUhpc(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleRegisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public static synthetic lambda$veRn_GhgLZLlOHOJ0ZYT6KcfYqo(Lcom/android/server/wm/LaunchObserverRegistryImpl;Landroid/content/Intent;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnIntentStarted(Landroid/content/Intent;J)V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .locals 2
    .param p1, "activity"    # [B

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method public onActivityLaunchFinished([BJ)V
    .locals 3
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$QcawcFcJtEX4EhYptq_Vb4j368Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$QcawcFcJtEX4EhYptq_Vb4j368Y;

    .line 111
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 107
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method public onActivityLaunched([BI)V
    .locals 3
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 91
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void
.end method

.method public onIntentFailed()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$KukKmVpn5W_1xSV6Dnp8wW2H2Ks;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$KukKmVpn5W_1xSV6Dnp8wW2H2Ks;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$veRn_GhgLZLlOHOJ0ZYT6KcfYqo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$veRn_GhgLZLlOHOJ0ZYT6KcfYqo;

    .line 78
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 74
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    return-void
.end method

.method public onReportFullyDrawn([BJ)V
    .locals 3
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$FhvLqBbd_XMsJK45WV5Mlt8JSYM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$FhvLqBbd_XMsJK45WV5Mlt8JSYM;

    .line 120
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 116
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method

.method public registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 2
    .param p1, "launchObserver"    # Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$pWUDt4Ot3BWLJOTAhXMkkhHUhpc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$pWUDt4Ot3BWLJOTAhXMkkhHUhpc;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method

.method public unregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 2
    .param p1, "launchObserver"    # Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    return-void
.end method
