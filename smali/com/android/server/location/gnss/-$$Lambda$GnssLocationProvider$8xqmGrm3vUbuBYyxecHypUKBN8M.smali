.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:[I

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;->f$1:[I

    iput-object p3, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;->f$1:[I

    iget-object v2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;->f$2:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->lambda$onUpdateSatelliteBlacklist$1$GnssLocationProvider([I[I)V

    return-void
.end method
