.class public Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;
.super Ljava/lang/Object;
.source "OpGnssLocationProviderInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpGnssLocProInj"

.field private static sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInterface()Z
    .locals 2

    .line 32
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_location_provider:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    sput-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    .line 37
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    if-nez v0, :cond_1

    .line 38
    const-string v0, "OpGnssLocProInj"

    const-string v1, "sOpGnssLocationProvider is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getForceMSA()Z
    .locals 2

    .line 62
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->getForceMSA()Z

    move-result v0

    return v0

    .line 65
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "getForceMSA, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public static getGnssHalDbgLevel(Z)I
    .locals 2
    .param p0, "isBoot"    # Z

    .line 115
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->getGnssHalDbgLevel(Z)I

    move-result v0

    return v0

    .line 118
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "getGnssHalDbgLevel, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public static getHandledFusedLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 2
    .param p0, "location"    # Landroid/location/Location;

    .line 106
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->getHandledFusedLocation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "getHandledFusedLocation, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getHandledNetworkLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 2
    .param p0, "location"    # Landroid/location/Location;

    .line 97
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->getHandledNetworkLocation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "getHandledNetworkLocation, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLogLevelStatusUpdates()Z
    .locals 2

    .line 79
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->getLogLevelStatusUpdates()Z

    move-result v0

    return v0

    .line 82
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "getLogLevelStatusUpdates, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public static handleExtraGnssProviderCmd(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 54
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->handleExtraGnssProviderCmd(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "handleExtraGnssProviderCmd, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->initInstance(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "initInstance, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void
.end method

.method public static isDisableDeviceIdle()Z
    .locals 2

    .line 88
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->isDisableDeviceIdle()Z

    move-result v0

    return v0

    .line 91
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "isDisableDeviceIdle, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public static resetForceMSA()V
    .locals 2

    .line 71
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->resetForceMSA()V

    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "resetForceMSA, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void
.end method

.method public static setLogUpate()V
    .locals 2

    .line 124
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->sOpGnssLocationProvider:Lcom/oneplus/android/server/location/IOpGnssLocationProvider;

    invoke-interface {v0}, Lcom/oneplus/android/server/location/IOpGnssLocationProvider;->setLogUpate()V

    goto :goto_0

    .line 127
    :cond_0
    const-string v0, "OpGnssLocProInj"

    const-string v1, "setLogUpate, checkInterface is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void
.end method
