.class public final synthetic Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$IpWViosH4sGe7yz1VTujaEKIDNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$IpWViosH4sGe7yz1VTujaEKIDNQ;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    return-void
.end method


# virtual methods
.method public final onValues(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$IpWViosH4sGe7yz1VTujaEKIDNQ;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->lambda$setLocalPrefixes$3(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V

    return-void
.end method
