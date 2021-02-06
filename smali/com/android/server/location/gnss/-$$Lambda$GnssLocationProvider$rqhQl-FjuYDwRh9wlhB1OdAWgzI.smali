.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$rqhQl-FjuYDwRh9wlhB1OdAWgzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$rqhQl-FjuYDwRh9wlhB1OdAWgzI;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    return-void
.end method


# virtual methods
.method public final getGnssMetricsAsProtoString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$rqhQl-FjuYDwRh9wlhB1OdAWgzI;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$getGnssMetricsProvider$10$GnssLocationProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
