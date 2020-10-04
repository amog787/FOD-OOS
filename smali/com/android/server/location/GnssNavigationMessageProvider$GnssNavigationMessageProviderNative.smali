.class Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;
.super Ljava/lang/Object;
.source "GnssNavigationMessageProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssNavigationMessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssNavigationMessageProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNavigationMessageSupported()Z
    .locals 1

    .line 147
    invoke-static {}, Lcom/android/server/location/GnssNavigationMessageProvider;->access$000()Z

    move-result v0

    return v0
.end method

.method public startNavigationMessageCollection()Z
    .locals 1

    .line 151
    invoke-static {}, Lcom/android/server/location/GnssNavigationMessageProvider;->access$100()Z

    move-result v0

    return v0
.end method

.method public stopNavigationMessageCollection()Z
    .locals 1

    .line 155
    invoke-static {}, Lcom/android/server/location/GnssNavigationMessageProvider;->access$200()Z

    move-result v0

    return v0
.end method
