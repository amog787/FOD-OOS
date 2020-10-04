.class public Lcom/android/server/power/PowerManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

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

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 777
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1200(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public nativeForceSuspend()Z
    .locals 1

    .line 807
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1800()Z

    move-result v0

    return v0
.end method

.method public nativeInit(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/power/PowerManagerService;

    .line 772
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)V

    .line 773
    return-void
.end method

.method public nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 782
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1300(Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public nativeSendPowerHint(II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .line 797
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1600(II)V

    .line 798
    return-void
.end method

.method public nativeSetAutoSuspend(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 792
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1500(Z)V

    .line 793
    return-void
.end method

.method public nativeSetFeature(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "data"    # I

    .line 802
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$1700(II)V

    .line 803
    return-void
.end method

.method public nativeSetInteractive(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 787
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1400(Z)V

    .line 788
    return-void
.end method
