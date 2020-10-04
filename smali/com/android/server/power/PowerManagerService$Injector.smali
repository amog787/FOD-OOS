.class Lcom/android/server/power/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 839
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySavingStats"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 826
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    return-object v0
.end method

.method createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .locals 1

    .line 830
    new-instance v0, Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;-><init>()V

    return-object v0
.end method

.method createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/power/Notifier;
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p5, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 815
    new-instance v6, Lcom/android/server/power/Notifier;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;)V

    return-object v6
.end method

.method createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2
    .param p1, "service"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "name"    # Ljava/lang/String;

    .line 819
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 820
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    return-object v0
.end method

.method createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 835
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    return-object v0
.end method
