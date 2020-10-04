.class public final synthetic Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssSatelliteBlacklistHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;->f$0:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;->f$0:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    invoke-virtual {v0}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->updateSatelliteBlacklist()V

    return-void
.end method
