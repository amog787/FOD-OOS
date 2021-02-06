.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/LogicalLight;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field private final mNotificationLight:Lcom/android/server/lights/LogicalLight;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .line 1292
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    .line 1297
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 1301
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00a0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1303
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1305
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e009d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1307
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e009f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1309
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1311
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 7

    .line 1317
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    if-nez v0, :cond_0

    .line 1318
    return-void

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 1321
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 1322
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v0, v2, :cond_2

    .line 1323
    if-ne v1, v3, :cond_1

    .line 1325
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    goto :goto_2

    .line 1330
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v2}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 1334
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    goto :goto_2

    .line 1337
    :cond_2
    const/4 v2, 0x5

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 1348
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v2}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    goto :goto_2

    .line 1339
    :cond_4
    :goto_0
    if-eq v1, v2, :cond_6

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_5

    goto :goto_1

    .line 1344
    :cond_5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    goto :goto_2

    .line 1341
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    .line 1350
    :goto_2
    return-void
.end method
