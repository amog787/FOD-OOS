.class public Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;
.super Ljava/lang/Object;
.source "GnssMeasurementCorrectionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;
    }
.end annotation


# static fields
.field static final CAPABILITY_EXCESS_PATH_LENGTH:I = 0x2

.field static final CAPABILITY_LOS_SATS:I = 0x1

.field static final CAPABILITY_REFLECTING_PLANE:I = 0x4

.field private static final INVALID_CAPABILITIES:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "GnssMeasurementCorrectionsProvider"


# instance fields
.field private volatile mCapabilities:I

.field private final mHandler:Landroid/os/Handler;

.field private final mNative:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;-><init>(Landroid/os/Handler;Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;)V

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "aNative"    # Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->mCapabilities:I

    .line 54
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->mNative:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;

    .line 56
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 33
    invoke-static {}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->native_is_measurement_corrections_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/location/GnssMeasurementCorrections;)Z
    .locals 1
    .param p0, "x0"    # Landroid/location/GnssMeasurementCorrections;

    .line 33
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->native_inject_gnss_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result v0

    return v0
.end method

.method private static hasCapability(II)Z
    .locals 1
    .param p0, "halCapabilities"    # I
    .param p1, "capability"    # I

    .line 128
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCapabilitiesReceived()Z
    .locals 2

    .line 132
    iget v0, p0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->mCapabilities:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native native_inject_gnss_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z
.end method

.method private static native native_is_measurement_corrections_supported()Z
.end method


# virtual methods
.method getCapabilities()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->mCapabilities:I

    return v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .locals 2
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;

    .line 73
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->isCapabilitiesReceived()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "GnssMeasurementCorrectionsProvider"

    const-string v1, "Failed to inject GNSS measurement corrections. Capabilities not received yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssMeasurementCorrectionsProvider$d4q-3xaRMcxrHCXpK2KTUwTmahY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssMeasurementCorrectionsProvider$d4q-3xaRMcxrHCXpK2KTUwTmahY;-><init>(Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;Landroid/location/GnssMeasurementCorrections;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public isAvailableInPlatform()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->mNative:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;->isMeasurementCorrectionsSupported()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$injectGnssMeasurementCorrections$0$GnssMeasurementCorrectionsProvider(Landroid/location/GnssMeasurementCorrections;)V
    .locals 2
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;

    .line 79
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->mNative:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "GnssMeasurementCorrectionsProvider"

    const-string v1, "Failure in injecting GNSS corrections."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method onCapabilitiesUpdated(I)Z
    .locals 2
    .param p1, "capabilities"    # I

    .line 87
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set capabilities. Received capabilities 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not contain the mandatory LOS_SATS or the EXCESS_PATH_LENGTH capability."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "GnssMeasurementCorrectionsProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->mCapabilities:I

    .line 90
    return v0
.end method

.method toStringCapabilities()Ljava/lang/String;
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->getCapabilities()I

    move-result v0

    .line 111
    .local v0, "capabilities":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v1, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "mCapabilities=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "LOS_SATS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const-string v2, "EXCESS_PATH_LENGTH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    const-string v2, "REFLECTING_PLANE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
