.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;->f$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;->f$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$3$BatteryExternalStatsWorker()V

    return-void
.end method
