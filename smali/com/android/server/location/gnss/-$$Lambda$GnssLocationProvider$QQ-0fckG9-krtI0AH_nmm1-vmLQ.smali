.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$QQ-0fckG9-krtI0AH_nmm1-vmLQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$QQ-0fckG9-krtI0AH_nmm1-vmLQ;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$QQ-0fckG9-krtI0AH_nmm1-vmLQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$QQ-0fckG9-krtI0AH_nmm1-vmLQ;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$QQ-0fckG9-krtI0AH_nmm1-vmLQ;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$setSubHalMeasurementCorrectionsCapabilities$8$GnssLocationProvider(I)V

    return-void
.end method
