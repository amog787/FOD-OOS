.class final Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThermalEventListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3878
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/stats/pull/StatsPullAtomService$1;

    .line 3878
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 5
    .param p1, "temp"    # Landroid/os/Temperature;

    .line 3881
    nop

    .line 3882
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v3

    .line 3881
    const/16 v4, 0xbd

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;II)V

    .line 3883
    return-void
.end method
