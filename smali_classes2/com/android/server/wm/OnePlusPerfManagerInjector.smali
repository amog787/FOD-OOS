.class public Lcom/android/server/wm/OnePlusPerfManagerInjector;
.super Ljava/lang/Object;
.source "OnePlusPerfManagerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusPerfManagerInjector"

.field private static onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const-string v0, "OnePlusPerfManagerInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb9

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "perfBoost"    # Landroid/util/BoostFramework;

    .line 57
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.acquirePerfForStartSpeedV2()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 65
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusPerfManager;->acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v0

    return v0
.end method

.method public static initInstance()V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 36
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    if-nez v0, :cond_1

    .line 40
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_perf_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOnePlusPerfManager;

    sput-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    .line 42
    :cond_1
    return-void
.end method

.method public static mayLockPidToCpu(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "pid"    # Ljava/lang/String;

    .line 69
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.mayLockPidToCpu()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 77
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusPerfManager;->mayLockPidToCpu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static runAppMayWithPerf(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 45
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.runAppMayWithPerf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 53
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
