.class public Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;
.super Ljava/lang/Object;
.source "HighPowerDetectorInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final ENABLED:Z

.field public static final NUM_CPU_MONITOR_LEVELS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HighPowerDetectorInjector"

.field private static highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->DEBUG_ONEPLUS:Z

    .line 43
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x88

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 44
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v2, 0x52

    aput v2, v1, v3

    .line 45
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginCpuStatistics()V
    .locals 1

    .line 76
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 82
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 83
    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->beginCpuStatistics()V

    .line 85
    :cond_2
    return-void
.end method

.method public static cancelBgDetectNotificationIfNeeded()V
    .locals 1

    .line 124
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 128
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 130
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 131
    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V

    .line 133
    :cond_2
    return-void
.end method

.method public static doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 100
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 104
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 106
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    .line 109
    :cond_2
    return-void
.end method

.method public static dumpBGCStats(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "orderType"    # Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    .line 247
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 251
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 253
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 254
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->dumpBGCStats(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V

    .line 256
    :cond_2
    return-void
.end method

.method public static dumpDailyPowerFiles(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "preFix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 324
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 328
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 330
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 331
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->dumpDailyPowerFiles(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 333
    :cond_2
    return-void
.end method

.method public static enableAggressive(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V
    .locals 1
    .param p0, "enable"    # Z
    .param p1, "restrictType"    # Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    .line 235
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 239
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 241
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 242
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->enableAggressive(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V

    .line 244
    :cond_2
    return-void
.end method

.method public static finishCpuStatistics()V
    .locals 1

    .line 88
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 94
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 95
    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->finishCpuStatistics()V

    .line 97
    :cond_2
    return-void
.end method

.method public static forceUpdateOnlineConfig()V
    .locals 1

    .line 136
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 142
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->forceUpdateOnlineConfig()V

    .line 145
    :cond_2
    return-void
.end method

.method public static getBgPowerHungryList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    .line 186
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 187
    return-object v1

    .line 189
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 190
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 192
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 193
    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 195
    :cond_2
    return-object v1
.end method

.method public static getDeviceTemp()I
    .locals 2

    .line 173
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 174
    return v1

    .line 176
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 177
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 179
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 180
    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->getDeviceTemp()I

    move-result v0

    return v0

    .line 182
    :cond_2
    return v1
.end method

.method public static getResult(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "orderType"    # Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    .line 312
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 313
    return-void

    .line 315
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 316
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 318
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 319
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->getResult(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V

    .line 321
    :cond_2
    return-void
.end method

.method public static informBGCDailyReporting(Z)V
    .locals 1
    .param p0, "forQuickDebug"    # Z

    .line 261
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 267
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 268
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->informBGCDailyReporting(Z)V

    .line 270
    :cond_2
    return-void
.end method

.method public static informBatteryStatReset()V
    .locals 1

    .line 287
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 291
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 293
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 294
    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->informBatteryStatReset()V

    .line 296
    :cond_2
    return-void
.end method

.method public static informPkgRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 148
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 152
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 154
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->informPkgRemoved(Ljava/lang/String;I)V

    .line 157
    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .line 52
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 58
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 59
    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->initInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V

    .line 61
    :cond_2
    return-void
.end method

.method public static postProcessOfForceStop(Ljava/lang/String;I)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 112
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 116
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 118
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 119
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;I)V

    .line 121
    :cond_2
    return-void
.end method

.method public static removeUidStats(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 274
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 278
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 280
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 281
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->removeUidStats(I)V

    .line 283
    :cond_2
    return-void
.end method

.method public static resetClean(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 300
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 306
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 307
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->resetClean(Ljava/io/PrintWriter;)V

    .line 309
    :cond_2
    return-void
.end method

.method public static shellCommand(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "opti"    # I
    .param p2, "args"    # [Ljava/lang/String;

    .line 160
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 161
    return v1

    .line 163
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 164
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 166
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->shellCommand(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 169
    :cond_2
    return v1
.end method

.method public static startMonitor()V
    .locals 1

    .line 64
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 70
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->startMonitor()V

    .line 73
    :cond_2
    return-void
.end method

.method public static stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "powerLevel"    # I

    .line 199
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 203
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 205
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 206
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    .line 208
    :cond_2
    return-void
.end method

.method public static updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "add"    # Z

    .line 211
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 215
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 217
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 218
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->updateWidgetPackage(Ljava/lang/String;Z)V

    .line 220
    :cond_2
    return-void
.end method

.method public static updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p0, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-nez v0, :cond_1

    .line 227
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    sput-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    .line 229
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->highPowerDetector:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;

    if-eqz v0, :cond_2

    .line 230
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;->updateWidgetPackages(Ljava/util/HashSet;)V

    .line 232
    :cond_2
    return-void
.end method
