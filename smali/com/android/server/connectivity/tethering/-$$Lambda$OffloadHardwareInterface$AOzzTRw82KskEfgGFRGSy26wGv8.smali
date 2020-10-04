.class public final synthetic Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$AOzzTRw82KskEfgGFRGSy26wGv8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$AOzzTRw82KskEfgGFRGSy26wGv8;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    return-void
.end method


# virtual methods
.method public final onValues(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$AOzzTRw82KskEfgGFRGSy26wGv8;->f$0:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->lambda$stopOffloadControl$1$OffloadHardwareInterface(ZLjava/lang/String;)V

    return-void
.end method
