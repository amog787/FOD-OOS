.class public Lcom/android/server/location/gnss/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;
.super Ljava/lang/Object;
.source "GnssNavigationMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssNavigationMessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssNavigationMessageProviderNative"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNavigationMessageSupported()Z
    .locals 1

    .line 149
    invoke-static {}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->access$000()Z

    move-result v0

    return v0
.end method

.method public startNavigationMessageCollection()Z
    .locals 1

    .line 153
    invoke-static {}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->access$100()Z

    move-result v0

    return v0
.end method

.method public stopNavigationMessageCollection()Z
    .locals 1

    .line 157
    invoke-static {}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->access$200()Z

    move-result v0

    return v0
.end method
