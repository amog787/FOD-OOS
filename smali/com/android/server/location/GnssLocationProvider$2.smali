.class Lcom/android/server/location/GnssLocationProvider$2;
.super Lcom/android/server/location/GnssStatusListenerHelper;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 676
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GnssStatusListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected isAvailableInPlatform()Z
    .locals 1

    .line 679
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v0

    return v0
.end method

.method protected isGpsEnabled()Z
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$700(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v0

    return v0
.end method
