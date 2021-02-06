.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/location/Location;

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;ILandroid/location/Location;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$2:Landroid/location/Location;

    iput p4, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$3:I

    iput-wide p5, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$1:I

    iget-object v2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$2:Landroid/location/Location;

    iget v3, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$3:I

    iget-wide v4, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$9z2BzqtI1mIF3OUSD_3kdlaP8Ls;->f$4:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$reportGeofenceTransition$11$GnssLocationProvider(ILandroid/location/Location;IJ)V

    return-void
.end method
