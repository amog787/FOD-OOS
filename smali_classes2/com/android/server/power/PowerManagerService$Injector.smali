.class Lcom/android/server/power/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
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

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 904
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method createAmbientDisplaySuppressionController(Landroid/content/Context;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 909
    new-instance v0, Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-direct {v0, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method createBatterySaverController(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .locals 7
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySaverPolicy"    # Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .param p4, "batterySavingStats"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 885
    new-instance v6, Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    return-object v6
.end method

.method createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySavingStats"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 879
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    return-object v0
.end method

.method createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySaverController"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 891
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    return-object v0
.end method

.method createClock()Lcom/android/server/power/PowerManagerService$Clock;
    .locals 1

    .line 931
    sget-object v0, Lcom/android/server/power/-$$Lambda$mJs78oyYBMDErllGe4sx87OZns8;->INSTANCE:Lcom/android/server/power/-$$Lambda$mJs78oyYBMDErllGe4sx87OZns8;

    return-object v0
.end method

.method createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 938
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object v0
.end method

.method createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;
    .locals 1

    .line 913
    new-instance v0, Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-direct {v0}, Lcom/android/server/power/InattentiveSleepWarningController;-><init>()V

    return-object v0
.end method

.method createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .locals 1

    .line 895
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

    .line 868
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

    .line 872
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 873
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    return-object v0
.end method

.method public createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;
    .locals 1

    .line 917
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$1;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 900
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    return-object v0
.end method

.method invalidateIsInteractiveCaches()V
    .locals 0

    .line 942
    invoke-static {}, Landroid/os/PowerManager;->invalidateIsInteractiveCaches()V

    .line 943
    return-void
.end method
