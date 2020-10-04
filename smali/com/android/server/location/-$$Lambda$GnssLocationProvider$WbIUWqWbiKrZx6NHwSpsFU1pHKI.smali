.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;

.field private final synthetic f$1:[I

.field private final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;->f$1:[I

    iput-object p3, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;->f$1:[I

    iget-object v2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;->f$2:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->lambda$onUpdateSatelliteBlacklist$0$GnssLocationProvider([I[I)V

    return-void
.end method
