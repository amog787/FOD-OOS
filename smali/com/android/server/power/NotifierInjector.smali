.class public Lcom/android/server/power/NotifierInjector;
.super Ljava/lang/Object;
.source "NotifierInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final POWER_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "NotifierInjector"

.field private static opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/power/NotifierInjector;->DEBUG:Z

    .line 36
    const-string v0, "NotifierInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/NotifierInjector;->DEBUG_INJECTOR:Z

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa0

    aput v2, v0, v1

    .line 39
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/NotifierInjector;->POWER_CONTROL_ENABLED:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyScreenState(I)V
    .locals 4
    .param p0, "state"    # I

    .line 44
    sget-boolean v0, Lcom/android/server/power/NotifierInjector;->POWER_CONTROL_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    sget-boolean v0, Lcom/android/server/power/NotifierInjector;->DEBUG_INJECTOR:Z

    const-string v1, "NotifierInjector"

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyScreenState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string/jumbo v2, "off"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "on"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_2
    sget-object v0, Lcom/android/server/power/NotifierInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-nez v0, :cond_3

    .line 51
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 52
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerController$Stub;

    sput-object v0, Lcom/android/server/power/NotifierInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    .line 56
    :cond_3
    sget-object v0, Lcom/android/server/power/NotifierInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-eqz v0, :cond_5

    .line 58
    :try_start_0
    sget-boolean v0, Lcom/android/server/power/NotifierInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_4

    .line 59
    const-string v0, "before calling notifyScreenState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_4
    sget-object v0, Lcom/android/server/power/NotifierInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->notifyScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 66
    :cond_5
    const-string v0, "Cannot get OpPowerControllerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_2
    return-void
.end method
