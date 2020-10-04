.class public final synthetic Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$nv6rlSkSWXyiDHH-quQiDc8IaU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$nv6rlSkSWXyiDHH-quQiDc8IaU0;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iput p2, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$nv6rlSkSWXyiDHH-quQiDc8IaU0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$nv6rlSkSWXyiDHH-quQiDc8IaU0;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iget v1, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$nv6rlSkSWXyiDHH-quQiDc8IaU0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->lambda$onEvent$0$OffloadHardwareInterface$TetheringOffloadCallback(I)V

    return-void
.end method
