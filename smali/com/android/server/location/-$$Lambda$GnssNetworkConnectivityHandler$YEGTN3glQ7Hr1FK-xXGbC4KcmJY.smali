.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$YEGTN3glQ7Hr1FK-xXGbC4KcmJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$YEGTN3glQ7Hr1FK-xXGbC4KcmJY;->f$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssNetworkConnectivityHandler$YEGTN3glQ7Hr1FK-xXGbC4KcmJY;->f$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->lambda$onReportAGpsStatus$1$GnssNetworkConnectivityHandler()V

    return-void
.end method
