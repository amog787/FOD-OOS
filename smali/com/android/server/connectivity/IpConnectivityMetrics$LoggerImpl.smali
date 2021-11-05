.class Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;
.super Ljava/lang/Object;
.source "IpConnectivityMetrics.java"

# interfaces
.implements Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;Lcom/android/server/connectivity/IpConnectivityMetrics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;
    .param p2, "x1"    # Lcom/android/server/connectivity/IpConnectivityMetrics$1;

    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V

    return-void
.end method


# virtual methods
.method public defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    return-object v0
.end method
