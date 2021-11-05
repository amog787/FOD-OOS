.class Lcom/android/server/BatteryService$HealthServiceWrapper$2;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$HealthServiceWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$HealthServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 1610
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$2;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
