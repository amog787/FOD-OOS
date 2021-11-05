.class public final synthetic Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BlockingBinderRunner;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/GeocoderProxy;

.field public final synthetic f$1:D

.field public final synthetic f$2:D

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/location/GeocoderParams;

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GeocoderProxy;DDILandroid/location/GeocoderParams;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$0:Lcom/android/server/location/GeocoderProxy;

    iput-wide p2, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$1:D

    iput-wide p4, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$2:D

    iput p6, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$3:I

    iput-object p7, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$4:Landroid/location/GeocoderParams;

    iput-object p8, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$0:Lcom/android/server/location/GeocoderProxy;

    iget-wide v1, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$1:D

    iget-wide v3, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$2:D

    iget v5, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$3:I

    iget-object v6, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$4:Landroid/location/GeocoderParams;

    iget-object v7, p0, Lcom/android/server/location/-$$Lambda$GeocoderProxy$3pRxYLuoUiiGxCQbVaXbDnDtT3Y;->f$5:Ljava/util/List;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GeocoderProxy;->lambda$getFromLocation$0$GeocoderProxy(DDILandroid/location/GeocoderParams;Ljava/util/List;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
