.class public final synthetic Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$dRsq86SXVH7z342fbs2U36cr67I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$dRsq86SXVH7z342fbs2U36cr67I;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$dRsq86SXVH7z342fbs2U36cr67I;->f$0:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->lambda$getCurrentCoolingDevices$1(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method
