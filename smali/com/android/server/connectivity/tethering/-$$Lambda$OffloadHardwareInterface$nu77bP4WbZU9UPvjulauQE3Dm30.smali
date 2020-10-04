.class public final synthetic Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$nu77bP4WbZU9UPvjulauQE3Dm30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$nu77bP4WbZU9UPvjulauQE3Dm30;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    return-void
.end method


# virtual methods
.method public final onValues(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$nu77bP4WbZU9UPvjulauQE3Dm30;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->lambda$getForwardedStats$2(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;JJ)V

    return-void
.end method
