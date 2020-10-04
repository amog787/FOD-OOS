.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7an4_QLRsGpd_GYEEX9o8MWsh5g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;

.field private final synthetic f$1:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7an4_QLRsGpd_GYEEX9o8MWsh5g;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7an4_QLRsGpd_GYEEX9o8MWsh5g;->f$1:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7an4_QLRsGpd_GYEEX9o8MWsh5g;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7an4_QLRsGpd_GYEEX9o8MWsh5g;->f$1:Landroid/location/GnssMeasurementsEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->lambda$reportMeasurementData$3$GnssLocationProvider(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method
