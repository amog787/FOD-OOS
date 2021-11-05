.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$zlx4t8vwhG59btefM8ED7yKJkGo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;ILandroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$zlx4t8vwhG59btefM8ED7yKJkGo;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$zlx4t8vwhG59btefM8ED7yKJkGo;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$zlx4t8vwhG59btefM8ED7yKJkGo;->f$2:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$zlx4t8vwhG59btefM8ED7yKJkGo;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$zlx4t8vwhG59btefM8ED7yKJkGo;->f$1:I

    iget-object v2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$zlx4t8vwhG59btefM8ED7yKJkGo;->f$2:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$reportGeofenceStatus$13$GnssLocationProvider(ILandroid/location/Location;)V

    return-void
.end method
