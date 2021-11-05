.class public final synthetic Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BlockingBinderRunner;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:D

.field public final synthetic f$2:D

.field public final synthetic f$3:D

.field public final synthetic f$4:D

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/location/GeocoderParams;

.field public final synthetic f$7:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$1:D

    iput-wide p4, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$2:D

    iput-wide p6, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$3:D

    iput-wide p8, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$4:D

    iput p10, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$5:I

    iput-object p11, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$6:Landroid/location/GeocoderParams;

    iput-object p12, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$1:D

    iget-wide v3, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$2:D

    iget-wide v5, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$3:D

    iget-wide v7, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$4:D

    iget v9, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$5:I

    iget-object v10, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$6:Landroid/location/GeocoderParams;

    iget-object v11, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$l4GRjTzjcqxZJILrVLX5qayXBE0;->f$7:Ljava/util/List;

    move-object v12, p1

    invoke-static/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->lambda$getFromLocationName$1(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
