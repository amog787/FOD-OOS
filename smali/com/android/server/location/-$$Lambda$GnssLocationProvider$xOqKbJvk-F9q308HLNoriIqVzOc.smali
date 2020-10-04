.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssLocationProvider$xOqKbJvk-F9q308HLNoriIqVzOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssLocationProvider;

.field private final synthetic f$1:Landroid/location/GnssNavigationMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$xOqKbJvk-F9q308HLNoriIqVzOc;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$xOqKbJvk-F9q308HLNoriIqVzOc;->f$1:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$xOqKbJvk-F9q308HLNoriIqVzOc;->f$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$xOqKbJvk-F9q308HLNoriIqVzOc;->f$1:Landroid/location/GnssNavigationMessage;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->lambda$reportNavigationMessage$4$GnssLocationProvider(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method
