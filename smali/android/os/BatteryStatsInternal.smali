.class public abstract Landroid/os/BatteryStatsInternal;
.super Ljava/lang/Object;
.source "BatteryStatsInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMobileIfaces()[Ljava/lang/String;
.end method

.method public abstract getWifiIfaces()[Ljava/lang/String;
.end method

.method public abstract noteJobsDeferred(IIJ)V
.end method
