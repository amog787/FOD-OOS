.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$J1FYzW5KOl5qaNdaO2TLZ9hbi9Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$J1FYzW5KOl5qaNdaO2TLZ9hbi9Y;->f$0:Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$J1FYzW5KOl5qaNdaO2TLZ9hbi9Y;->f$0:Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;->updateSatelliteBlacklist()V

    return-void
.end method
