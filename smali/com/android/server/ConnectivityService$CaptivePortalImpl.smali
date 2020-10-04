.class Lcom/android/server/ConnectivityService$CaptivePortalImpl;
.super Landroid/net/ICaptivePortal$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalImpl"
.end annotation


# instance fields
.field private final mNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0
    .param p2, "network"    # Landroid/net/Network;

    .line 3702
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/ICaptivePortal$Stub;-><init>()V

    .line 3703
    iput-object p2, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    .line 3704
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Landroid/net/Network;
    .param p3, "x2"    # Lcom/android/server/ConnectivityService$1;

    .line 3699
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .locals 2
    .param p1, "response"    # I

    .line 3708
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3709
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)V

    .line 3713
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3714
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_1

    return-void

    .line 3717
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    .line 3718
    .local v1, "nm":Landroid/net/NetworkMonitorManager;
    if-nez v1, :cond_2

    return-void

    .line 3719
    :cond_2
    invoke-virtual {v1, p1}, Landroid/net/NetworkMonitorManager;->notifyCaptivePortalAppFinished(I)Z

    .line 3720
    return-void
.end method

.method public logEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3724
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)V

    .line 3726
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 3727
    return-void
.end method
