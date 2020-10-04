.class public final synthetic Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;


# instance fields
.field private final synthetic f$0:Landroid/util/MutableInt;

.field private final synthetic f$1:Landroid/os/BatteryProperty;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;->f$0:Landroid/util/MutableInt;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;->f$1:Landroid/os/BatteryProperty;

    return-void
.end method


# virtual methods
.method public final onValues(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;->f$0:Landroid/util/MutableInt;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;->f$1:Landroid/os/BatteryProperty;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V

    return-void
.end method
