.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Landroid/net/RouteInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/net/RouteInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;->f$0:Landroid/net/RouteInfo;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;->f$0:Landroid/net/RouteInfo;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyRouteChange$10(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
