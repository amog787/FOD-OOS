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

    const/16 v2, 0x9a

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

    .line 46
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.acquirePerfForStartSpeedV2()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 54
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

    .line 43
    :cond_1
    return-void
.end method

.method public static screenFrozenBoost(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 105
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "now will set screenFrozenBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 112
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusPerfManager;->screenFrozenBoost(Z)V

    .line 113
    return-void
.end method

.method public static setAnimLfThreadToUx()V
    .locals 2

    .line 116
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "now will set setAnimLfThreadToUx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 123
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0}, Lcom/android/server/wm/IOnePlusPerfManager;->setAnimLfThreadToUx()V

    .line 124
    return-void
.end method

.method public static setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 94
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "now will set cpuset display to surfaceflinger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 101
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusPerfManager;->setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setSystemServerToUx(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 70
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.setSystemServerToUx()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 78
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusPerfManager;->setSystemServerToUx(Z)V

    .line 79
    return-void
.end method

.method public static setThreadToUx(IZ)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "enable"    # Z

    .line 58
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 62
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.setThreadToUx()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 66
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusPerfManager;->setThreadToUx(IZ)V

    .line 67
    return-void
.end method

.method public static updateCurrentLauncherPid(I)V
    .locals 2
    .param p0, "pid"    # I

    .line 82
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.updateCurrentLauncherPid()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 90
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusPerfManager;->updateCurrentLauncherPid(I)V

    .line 91
    return-void
.end method
