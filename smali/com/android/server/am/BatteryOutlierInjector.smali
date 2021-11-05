.class public Lcom/android/server/am/BatteryOutlierInjector;
.super Ljava/lang/Object;
.source "BatteryOutlierInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryOutlierInjector"

.field private static batteryOutlier:Lcom/android/server/am/IBatteryOutlier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batteryoutlier:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IBatteryOutlier;

    sput-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBatteryOutlier;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 52
    :cond_1
    return-void
.end method

.method public static getPidMap(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 39
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batteryoutlier:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IBatteryOutlier;

    sput-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    .line 42
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0, p0}, Lcom/android/server/am/IBatteryOutlier;->getPidMap(Ljava/lang/StringBuilder;)V

    .line 44
    :cond_1
    return-void
.end method

.method public static initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "bts"    # Lcom/android/server/am/BatteryStatsService;

    .line 31
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batteryoutlier:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IBatteryOutlier;

    sput-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    .line 34
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryOutlierInjector;->batteryOutlier:Lcom/android/server/am/IBatteryOutlier;

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IBatteryOutlier;->initInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V

    .line 36
    :cond_1
    return-void
.end method
