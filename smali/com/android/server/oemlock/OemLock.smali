.class abstract Lcom/android/server/oemlock/OemLock;
.super Ljava/lang/Object;
.source "OemLock.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getLockName()Ljava/lang/String;
.end method

.method abstract isOemUnlockAllowedByCarrier()Z
.end method

.method abstract isOemUnlockAllowedByDevice()Z
.end method

.method abstract setOemUnlockAllowedByCarrier(Z[B)V
.end method

.method abstract setOemUnlockAllowedByDevice(Z)V
.end method
