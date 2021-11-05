.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$SS5YUaesQHufWj1T0I5sKoDFFWY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ConnectivityService;

.field public final synthetic f$1:Landroid/net/NetworkRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$SS5YUaesQHufWj1T0I5sKoDFFWY;->f$0:Lcom/android/server/ConnectivityService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$SS5YUaesQHufWj1T0I5sKoDFFWY;->f$1:Landroid/net/NetworkRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$SS5YUaesQHufWj1T0I5sKoDFFWY;->f$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$SS5YUaesQHufWj1T0I5sKoDFFWY;->f$1:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->lambda$declareNetworkRequestUnfulfillable$7$ConnectivityService(Landroid/net/NetworkRequest;)V

    return-void
.end method
