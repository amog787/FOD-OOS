.class public final synthetic Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;->f$0:Z

    iput p2, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;->f$1:I

    iput-object p3, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;->f$0:Z

    iget v1, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;->f$1:I

    iget-object v2, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->lambda$getCurrentTemperatures$0(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method
