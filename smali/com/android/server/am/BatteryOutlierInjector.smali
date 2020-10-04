.class public Lcom/android/server/am/BatteryOutlierInjector;
.super Ljava/lang/Object;
.source "BatteryOutlierInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "BatteryOutlierInjector"

.field private static batteryOutlier:Lcom/android/server/am/IBatteryOutlier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xa3

    aput v3, v1, v2

    .line 31
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v3, 0xa4

    aput v3, v1, v2

    .line 32
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/BatteryOutlierInjector;->ENABLED:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .line 57
    sget-boolean v0, Lcom/android/server/am/BatteryOutlierInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batteryoutlier:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IBatteryOutlier;

    sput-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    .line 62
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBatteryOutlier;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 64
    :cond_2
    return-void
.end method

.method public static getPidMap(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 47
    sget-boolean v0, Lcom/android/server/am/BatteryOutlierInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-nez v0, :cond_1

    .line 50
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batteryoutlier:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IBatteryOutlier;

    sput-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    .line 52
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0, p0}, Lcom/android/server/am/IBatteryOutlier;->getPidMap(Ljava/lang/StringBuilder;)V

    .line 54
    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "bts"    # Lcom/android/server/am/BatteryStatsService;

    .line 37
    sget-boolean v0, Lcom/android/server/am/BatteryOutlierInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-nez v0, :cond_1

    .line 40
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batteryoutlier:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IBatteryOutlier;

    sput-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    .line 42
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-eqz v0, :cond_2

    .line 43
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBatteryOutlier;->initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V

    .line 44
    :cond_2
    return-void
.end method
