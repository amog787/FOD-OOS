.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$1hXQgNJS0Q8F8bUdWsxa94PM98g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/DeviceIdleInternal$StationaryListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$1hXQgNJS0Q8F8bUdWsxa94PM98g;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    return-void
.end method


# virtual methods
.method public final onDeviceStationaryChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$1hXQgNJS0Q8F8bUdWsxa94PM98g;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$new$0$GnssLocationProvider(Z)V

    return-void
.end method
