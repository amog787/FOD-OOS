.class public Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
.super Ljava/lang/Object;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardedStats"
.end annotation


# instance fields
.field public rxBytes:J

.field public txBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    .line 76
    iput-wide v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    .line 77
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;)V
    .locals 4
    .param p1, "other"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    .line 80
    iget-wide v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    iget-wide v2, p1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    .line 81
    iget-wide v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    iget-wide v2, p1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "rx:%s tx:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
