.class public final Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
.super Landroid/net/IIpConnectivityMetrics$Stub;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Impl"
.end annotation


# static fields
.field static final CMD_DEFAULT:Ljava/lang/String; = ""

.field static final CMD_FLUSH:Ljava/lang/String; = "flush"

.field static final CMD_LIST:Ljava/lang/String; = "list"

.field static final CMD_PROTO:Ljava/lang/String; = "proto"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 264
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Landroid/net/IIpConnectivityMetrics$Stub;-><init>()V

    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 1

    .line 303
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private enforceDumpPermission()V
    .locals 1

    .line 307
    const-string v0, "android.permission.DUMP"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method private enforceNetdEventListeningPermission()V
    .locals 5

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 316
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 320
    return-void

    .line 317
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 317
    const-string v3, "Uid %d has no permission to listen for netd events."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IpConnectivityMetrics"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method


# virtual methods
.method public addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .locals 1
    .param p1, "callerType"    # I
    .param p2, "callback"    # Landroid/net/INetdEventCallback;

    .line 324
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 325
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    return v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 285
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceDumpPermission()V

    .line 287
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p3, v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 288
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x32b09e

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    const v4, 0x5d03b04

    if-eq v3, v4, :cond_3

    const v1, 0x65fc9e8

    if-eq v3, v1, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string/jumbo v1, "proto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_2

    :cond_3
    const-string v3, "flush"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    .line 297
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$400(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 298
    return-void

    .line 293
    :cond_5
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$300(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 294
    return-void

    .line 290
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$200(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 291
    return-void
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .line 279
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceConnectivityInternalPermission()V

    .line 280
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$100(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I

    move-result v0

    return v0
.end method

.method public removeNetdEventCallback(I)Z
    .locals 1
    .param p1, "callerType"    # I

    .line 333
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x1

    return v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->removeNetdEventCallback(I)Z

    move-result v0

    return v0
.end method
