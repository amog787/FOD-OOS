.class public final synthetic Lcom/android/server/-$$Lambda$PackageWatchdog$l0t57Hik0VChZk77GfFE4tnfo0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$l0t57Hik0VChZk77GfFE4tnfo0g;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final onNetworkStackFailure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$l0t57Hik0VChZk77GfFE4tnfo0g;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v0, p1}, Lcom/android/server/PackageWatchdog;->lambda$registerConnectivityModuleHealthListener$9$PackageWatchdog(Ljava/lang/String;)V

    return-void
.end method
