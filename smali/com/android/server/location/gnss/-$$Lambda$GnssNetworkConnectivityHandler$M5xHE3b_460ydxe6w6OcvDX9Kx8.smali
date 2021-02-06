.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$M5xHE3b_460ydxe6w6OcvDX9Kx8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$M5xHE3b_460ydxe6w6OcvDX9Kx8;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssNetworkConnectivityHandler$M5xHE3b_460ydxe6w6OcvDX9Kx8;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->lambda$onReportAGpsStatus$1$GnssNetworkConnectivityHandler()V

    return-void
.end method
