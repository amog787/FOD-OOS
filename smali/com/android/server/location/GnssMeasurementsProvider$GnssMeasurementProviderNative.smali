.class Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;
.super Ljava/lang/Object;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssMeasurementsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssMeasurementProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMeasurementSupported()Z
    .locals 1

    .line 163
    invoke-static {}, Lcom/android/server/location/GnssMeasurementsProvider;->access$000()Z

    move-result v0

    return v0
.end method

.method public startMeasurementCollection(Z)Z
    .locals 1
    .param p1, "enableFullTracking"    # Z

    .line 167
    invoke-static {p1}, Lcom/android/server/location/GnssMeasurementsProvider;->access$100(Z)Z

    move-result v0

    return v0
.end method

.method public stopMeasurementCollection()Z
    .locals 1

    .line 171
    invoke-static {}, Lcom/android/server/location/GnssMeasurementsProvider;->access$200()Z

    move-result v0

    return v0
.end method
