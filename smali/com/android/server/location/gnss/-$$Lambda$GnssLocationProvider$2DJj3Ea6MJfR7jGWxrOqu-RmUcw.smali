.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw;->f$1:I

    iput p3, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw;->f$1:I

    iget v2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$2DJj3Ea6MJfR7jGWxrOqu-RmUcw;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$reportGeofenceRemoveStatus$14$GnssLocationProvider(II)V

    return-void
.end method
