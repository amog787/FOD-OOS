.class public Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
.super Ljava/lang/Object;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNatTimeoutUpdate(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "proto"    # I
    .param p2, "srcAddr"    # Ljava/lang/String;
    .param p3, "srcPort"    # I
    .param p4, "dstAddr"    # Ljava/lang/String;
    .param p5, "dstPort"    # I

    .line 67
    return-void
.end method

.method public onStarted()V
    .locals 0

    .line 59
    return-void
.end method

.method public onStoppedError()V
    .locals 0

    .line 60
    return-void
.end method

.method public onStoppedLimitReached()V
    .locals 0

    .line 63
    return-void
.end method

.method public onStoppedUnsupported()V
    .locals 0

    .line 61
    return-void
.end method

.method public onSupportAvailable()V
    .locals 0

    .line 62
    return-void
.end method
