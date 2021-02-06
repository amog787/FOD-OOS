.class public Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;
.super Ljava/lang/Object;
.source "OpGnssLocationProviderInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpGnssLocProInj"

.field private static sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInterface()Z
    .locals 2

    .line 31
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_location_provider:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    sput-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    .line 36
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    if-nez v0, :cond_1

    .line 37
    const-string v0, "OpGnssLocProInj"

    const-string v1, "sOpGnssLocationProvider is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getForceMSA()Z
    .locals 2

    .line 61
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->getForceMSA()Z

    move-result v0

    return v0

    .line 64
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "getForceMSA, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public static getLogLevelStatusUpdates()Z
    .locals 2

    .line 78
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->getLogLevelStatusUpdates()Z

    move-result v0

    return v0

    .line 81
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "getLogLevelStatusUpdates, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public static handleExtraGnssProviderCmd(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 53
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->handleExtraGnssProviderCmd(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "handleExtraGnssProviderCmd, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-void
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->initInstance(Landroid/content/Context;)V

    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "initInstance, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-void
.end method

.method public static isDisableDeviceIdle()Z
    .locals 2

    .line 87
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->isDisableDeviceIdle()Z

    move-result v0

    return v0

    .line 90
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "isDisableDeviceIdle, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public static resetForceMSA()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->resetForceMSA()V

    goto :goto_0

    .line 73
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "resetForceMSA, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void
.end method
