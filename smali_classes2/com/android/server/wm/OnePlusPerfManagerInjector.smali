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

    .line 29
    const-string v0, "OnePlusPerfManagerInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    .line 31
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "perfBoost"    # Landroid/util/BoostFramework;

    .line 47
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.acquirePerfForStartSpeedV2()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 55
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusPerfManager;->acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v0

    return v0
.end method

.method public static initInstance()V
    .locals 1

    .line 36
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_perf_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOnePlusPerfManager;

    sput-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    .line 44
    :cond_1
    return-void
.end method

.method public static screenFrozenBoost(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 106
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "now will set screenFrozenBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 113
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusPerfManager;->screenFrozenBoost(Z)V

    .line 114
    return-void
.end method

.method public static setAnimLfThreadToUx()V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "now will set setAnimLfThreadToUx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 124
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0}, Lcom/android/server/wm/IOnePlusPerfManager;->setAnimLfThreadToUx()V

    .line 125
    return-void
.end method

.method public static setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 95
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "now will set cpuset display to surfaceflinger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 102
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusPerfManager;->setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setSystemServerToUx(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 71
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.setSystemServerToUx()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 79
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusPerfManager;->setSystemServerToUx(Z)V

    .line 80
    return-void
.end method

.method public static setThreadToUx(IZ)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "enable"    # Z

    .line 59
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.setThreadToUx()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 67
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusPerfManager;->setThreadToUx(IZ)V

    .line 68
    return-void
.end method

.method public static updateCurrentLauncherPid(ILcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 83
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "OnePlusPerfManagerInjector"

    const-string v1, "call OnePlusPerfManagerInjector.updateCurrentLauncherPid()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->initInstance()V

    .line 91
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManagerInjector;->onePlusPerfManager:Lcom/android/server/wm/IOnePlusPerfManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusPerfManager;->updateCurrentLauncherPid(ILcom/android/server/am/ActivityManagerService;)V

    .line 92
    return-void
.end method
