.class public final synthetic Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BlockingBinderRunner;


# instance fields
.field public final synthetic f$0:D

.field public final synthetic f$1:D

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/location/GeocoderParams;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(DDILandroid/location/GeocoderParams;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$0:D

    iput-wide p3, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$1:D

    iput p5, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$2:I

    iput-object p6, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$3:Landroid/location/GeocoderParams;

    iput-object p7, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 8

    iget-wide v0, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$0:D

    iget-wide v2, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$1:D

    iget v4, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$2:I

    iget-object v5, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$3:Landroid/location/GeocoderParams;

    iget-object v6, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$jfLn3HL2BzwsKdoI6ZZeFfEe10k;->f$4:Ljava/util/List;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->lambda$getFromLocation$0(DDILandroid/location/GeocoderParams;Ljava/util/List;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
