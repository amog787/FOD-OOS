.class Lcom/android/server/location/gnss/GnssLocationProvider$4;
.super Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 781
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0, p2, p3}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected isGpsEnabled()Z
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$4;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$900(Lcom/android/server/location/gnss/GnssLocationProvider;)Z

    move-result v0

    return v0
.end method
