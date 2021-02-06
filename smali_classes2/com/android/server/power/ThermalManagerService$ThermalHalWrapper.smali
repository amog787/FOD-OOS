.class abstract Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ThermalHalWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;,
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;

.field protected static final THERMAL_HAL_DEATH_COOKIE:I = 0x15ec


# instance fields
.field protected mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

.field protected final mHalLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 611
    const-class v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract connectToHal()Z
.end method

.method protected abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method protected abstract getCurrentCoolingDevices(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getCurrentTemperatures(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getTemperatureThresholds(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/hardware/thermal/V2_0/TemperatureThreshold;",
            ">;"
        }
    .end annotation
.end method

.method protected resendCurrentTemperatures()V
    .locals 6

    .line 647
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v1

    .line 649
    .local v1, "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 650
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 651
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Temperature;

    invoke-interface {v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 653
    .end local v1    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    .line 654
    return-void

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 629
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 630
    return-void
.end method
