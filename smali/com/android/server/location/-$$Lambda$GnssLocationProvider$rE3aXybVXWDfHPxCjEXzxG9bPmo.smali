.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$rE3aXybVXWDfHPxCjEXzxG9bPmo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$rE3aXybVXWDfHPxCjEXzxG9bPmo;->f$0:Lcom/android/server/location/GnssLocationProvider;

    return-void
.end method


# virtual methods
.method public final getGnssMetricsAsProtoString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$rE3aXybVXWDfHPxCjEXzxG9bPmo;->f$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->lambda$getGnssMetricsProvider$8$GnssLocationProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
