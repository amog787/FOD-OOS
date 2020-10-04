.class Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;
.super Ljava/lang/Object;
.source "GnssMeasurementCorrectionsProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssMeasurementCorrectionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssMeasurementCorrectionsProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .locals 1
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;

    .line 143
    invoke-static {p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->access$100(Landroid/location/GnssMeasurementCorrections;)Z

    move-result v0

    return v0
.end method

.method public isMeasurementCorrectionsSupported()Z
    .locals 1

    .line 138
    invoke-static {}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->access$000()Z

    move-result v0

    return v0
.end method
