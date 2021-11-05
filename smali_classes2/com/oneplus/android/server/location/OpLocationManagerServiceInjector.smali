.class public Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;
.super Ljava/lang/Object;
.source "OpLocationManagerServiceInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpLocMngrSrvInj"

.field private static sOpLocationManagerService:Lcom/oneplus/android/server/location/IOpLocationManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInterface()Z
    .locals 2

    .line 30
    sget-object v0, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->sOpLocationManagerService:Lcom/oneplus/android/server/location/IOpLocationManagerService;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_location_manager_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/location/IOpLocationManagerService;

    sput-object v0, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->sOpLocationManagerService:Lcom/oneplus/android/server/location/IOpLocationManagerService;

    .line 35
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->sOpLocationManagerService:Lcom/oneplus/android/server/location/IOpLocationManagerService;

    if-nez v0, :cond_1

    .line 36
    const-string v0, "OpLocMngrSrvInj"

    const-string v1, "sOpLocationManagerService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getLogLevelStatusUpdates()Z
    .locals 2

    .line 52
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->sOpLocationManagerService:Lcom/oneplus/android/server/location/IOpLocationManagerService;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpLocationManagerService;->getLogLevelStatusUpdates()Z

    move-result v0

    return v0

    .line 55
    :cond_0
    const-string v0, "OpLocMngrSrvInj"

    const-string v1, "getLogLevelStatusUpdates, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->sOpLocationManagerService:Lcom/oneplus/android/server/location/IOpLocationManagerService;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpLocationManagerService;->initInstance(Landroid/content/Context;)V

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "OpLocMngrSrvInj"

    const-string v1, "initInstance, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void
.end method

.method public static isDisableMOLR()Z
    .locals 2

    .line 70
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->sOpLocationManagerService:Lcom/oneplus/android/server/location/IOpLocationManagerService;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpLocationManagerService;->isDisableMOLR()Z

    move-result v0

    return v0

    .line 73
    :cond_0
    const-string v0, "OpLocMngrSrvInj"

    const-string v1, "isDisableMOLR, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public static listenEmergencyCallStatus()V
    .locals 2

    .line 62
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->sOpLocationManagerService:Lcom/oneplus/android/server/location/IOpLocationManagerService;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpLocationManagerService;->listenEmergencyCallStatus()V

    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "OpLocMngrSrvInj"

    const-string v1, "listenEmergencyCallStatus, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void
.end method
