.class public Lcom/android/server/location/gnss/GnssAntennaInfoProvider$GnssAntennaInfoProviderNative;
.super Ljava/lang/Object;
.source "GnssAntennaInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssAntennaInfoProviderNative"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAntennaInfoSupported()Z
    .locals 1

    .line 129
    invoke-static {}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->access$000()Z

    move-result v0

    return v0
.end method

.method public startAntennaInfoListening()Z
    .locals 1

    .line 134
    invoke-static {}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->access$100()Z

    move-result v0

    return v0
.end method

.method public stopAntennaInfoListening()Z
    .locals 1

    .line 139
    invoke-static {}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->access$200()Z

    move-result v0

    return v0
.end method
