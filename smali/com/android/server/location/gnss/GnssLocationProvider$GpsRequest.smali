.class Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsRequest"
.end annotation


# instance fields
.field public request:Lcom/android/internal/location/ProviderRequest;

.field public source:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    .line 272
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    .line 273
    return-void
.end method
