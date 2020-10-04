.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9jdOLj83ArhY9j3s3_Ubo4wma44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9jdOLj83ArhY9j3s3_Ubo4wma44;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9jdOLj83ArhY9j3s3_Ubo4wma44;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9jdOLj83ArhY9j3s3_Ubo4wma44;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9jdOLj83ArhY9j3s3_Ubo4wma44;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->lambda$setSubHalMeasurementCorrectionsCapabilities$6$GnssLocationProvider(I)V

    return-void
.end method
