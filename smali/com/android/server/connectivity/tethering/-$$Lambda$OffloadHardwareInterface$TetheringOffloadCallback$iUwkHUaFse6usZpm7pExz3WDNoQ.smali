.class public final synthetic Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$iUwkHUaFse6usZpm7pExz3WDNoQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

.field private final synthetic f$1:Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$iUwkHUaFse6usZpm7pExz3WDNoQ;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$iUwkHUaFse6usZpm7pExz3WDNoQ;->f$1:Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$iUwkHUaFse6usZpm7pExz3WDNoQ;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$iUwkHUaFse6usZpm7pExz3WDNoQ;->f$1:Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->lambda$updateTimeout$1$OffloadHardwareInterface$TetheringOffloadCallback(Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V

    return-void
.end method
