.class public Lcom/android/server/pm/OpLauncherAppsServiceInjector;
.super Ljava/lang/Object;
.source "OpLauncherAppsServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sOpLauncherAppsService:Lcom/android/server/pm/IOpLauncherAppsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->DEBUG:Z

    .line 26
    const-class v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkParallelUserstate(Landroid/os/UserHandle;Landroid/content/Context;)Z
    .locals 2
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "mContext"    # Landroid/content/Context;

    .line 40
    sget-boolean v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpLauncherAppsServiceInjector.checkParallelUserstate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->initInstance()V

    .line 44
    sget-object v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->sOpLauncherAppsService:Lcom/android/server/pm/IOpLauncherAppsService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpLauncherAppsService;->checkParallelUserstate(Landroid/os/UserHandle;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static initInstance()V
    .locals 2

    .line 30
    sget-boolean v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpLauncherAppsServiceInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    sget-object v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->sOpLauncherAppsService:Lcom/android/server/pm/IOpLauncherAppsService;

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_launcherappsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 35
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpLauncherAppsService;

    sput-object v0, Lcom/android/server/pm/OpLauncherAppsServiceInjector;->sOpLauncherAppsService:Lcom/android/server/pm/IOpLauncherAppsService;

    .line 37
    :cond_1
    return-void
.end method
