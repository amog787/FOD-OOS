.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/location/Location;

.field private final synthetic f$3:I

.field private final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;ILandroid/location/Location;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$2:Landroid/location/Location;

    iput p4, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$3:I

    iput-wide p5, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$1:I

    iget-object v2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$2:Landroid/location/Location;

    iget v3, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$3:I

    iget-wide v4, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;->f$4:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/GnssLocationProvider;->lambda$reportGeofenceTransition$9$GnssLocationProvider(ILandroid/location/Location;IJ)V

    return-void
.end method
