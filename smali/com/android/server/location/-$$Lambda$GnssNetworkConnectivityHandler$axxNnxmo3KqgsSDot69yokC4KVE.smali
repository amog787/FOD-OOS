.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

.field private final synthetic f$1:I

.field private final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;->f$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;->f$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;->f$1:I

    iget-object v2, p0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$axxNnxmo3KqgsSDot69yokC4KVE;->f$2:[B

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->lambda$onReportAGpsStatus$0$GnssNetworkConnectivityHandler(I[B)V

    return-void
.end method
