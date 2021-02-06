.class public Lcom/android/server/power/PowerManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 811
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1400(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public nativeForceSuspend()Z
    .locals 1

    .line 851
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2200()Z

    move-result v0

    return v0
.end method

.method public nativeInit(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/power/PowerManagerService;

    .line 806
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)V

    .line 807
    return-void
.end method

.method public nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 816
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1500(Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public nativeSendPowerHint(II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .line 831
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1800(II)V

    .line 832
    return-void
.end method

.method public nativeSetAutoSuspend(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 826
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1700(Z)V

    .line 827
    return-void
.end method

.method public nativeSetFeature(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "data"    # I

    .line 846
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$2100(II)V

    .line 847
    return-void
.end method

.method public nativeSetInteractive(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 821
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1600(Z)V

    .line 822
    return-void
.end method

.method public nativeSetPowerBoost(II)V
    .locals 0
    .param p1, "boost"    # I
    .param p2, "durationMs"    # I

    .line 836
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1900(II)V

    .line 837
    return-void
.end method

.method public nativeSetPowerMode(IZ)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "enabled"    # Z

    .line 841
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$2000(IZ)Z

    move-result v0

    return v0
.end method
