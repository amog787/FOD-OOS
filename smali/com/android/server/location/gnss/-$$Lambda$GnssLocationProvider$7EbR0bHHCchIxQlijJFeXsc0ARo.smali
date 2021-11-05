.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$7EbR0bHHCchIxQlijJFeXsc0ARo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$7EbR0bHHCchIxQlijJFeXsc0ARo;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$7EbR0bHHCchIxQlijJFeXsc0ARo;->f$1:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$7EbR0bHHCchIxQlijJFeXsc0ARo;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$7EbR0bHHCchIxQlijJFeXsc0ARo;->f$1:Landroid/location/GnssMeasurementsEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$reportMeasurementData$5$GnssLocationProvider(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method
