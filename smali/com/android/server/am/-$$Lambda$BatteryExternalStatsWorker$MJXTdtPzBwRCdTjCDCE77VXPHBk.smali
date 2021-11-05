.class public final synthetic Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$MJXTdtPzBwRCdTjCDCE77VXPHBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;


# instance fields
.field public final synthetic f$0:Landroid/os/SynchronousResultReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/os/SynchronousResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$MJXTdtPzBwRCdTjCDCE77VXPHBk;->f$0:Landroid/os/SynchronousResultReceiver;

    return-void
.end method


# virtual methods
.method public final onWifiActivityEnergyInfo(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$MJXTdtPzBwRCdTjCDCE77VXPHBk;->f$0:Landroid/os/SynchronousResultReceiver;

    invoke-static {v0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$updateExternalStatsLocked$5(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    return-void
.end method
