.class public Lcom/oneplus/android/server/OpMotorInjector;
.super Ljava/lang/Object;
.source "OpMotorInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/OpMotorInjector;->DEBUG:Z

    .line 29
    const-class v0, Lcom/oneplus/android/server/OpMotorInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/OpMotorInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMotorState()I
    .locals 2

    .line 90
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpMotorInjector.getMotorState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    if-nez v0, :cond_1

    .line 94
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/IOpMotorService;

    sput-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    .line 97
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    invoke-interface {v0}, Lcom/oneplus/android/server/IOpMotorService;->getMotorState()I

    move-result v0

    return v0
.end method

.method public static notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "nextPackage"    # Ljava/lang/String;
    .param p1, "nextActivity"    # Ljava/lang/String;
    .param p2, "prevPackage"    # Ljava/lang/String;
    .param p3, "prevActivity"    # Ljava/lang/String;

    .line 79
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpMotorInjector.notifyActivityChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    if-nez v0, :cond_1

    .line 83
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/IOpMotorService;

    sput-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    .line 86
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    invoke-interface {v0, p0, p1, p2, p2}, Lcom/oneplus/android/server/IOpMotorService;->notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static notifyKeyguardState(Z)V
    .locals 2
    .param p0, "state"    # Z

    .line 56
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpMotorInjector.notifyKeyguardState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/IOpMotorService;

    sput-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    .line 63
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/IOpMotorService;->notifyKeyguardState(Z)V

    .line 64
    return-void
.end method

.method public static notifyMotorState(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .line 34
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpMotorInjector.notifyMotorState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    if-nez v0, :cond_1

    .line 38
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/IOpMotorService;

    sput-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    .line 41
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/IOpMotorService;->notifyMotorState(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static notifyPowerOff()V
    .locals 2

    .line 67
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpMotorInjector.notifyPowerOff()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    if-nez v0, :cond_1

    .line 71
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/IOpMotorService;

    sput-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    .line 74
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    invoke-interface {v0}, Lcom/oneplus/android/server/IOpMotorService;->notifyPowerOff()V

    .line 75
    return-void
.end method

.method public static notifyScreenState(I)V
    .locals 2
    .param p0, "state"    # I

    .line 45
    sget-boolean v0, Lcom/oneplus/android/server/OpMotorInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpMotorInjector.notifyScreenState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    if-nez v0, :cond_1

    .line 49
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/IOpMotorService;

    sput-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    .line 52
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/OpMotorInjector;->sOpMotorService:Lcom/oneplus/android/server/IOpMotorService;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/IOpMotorService;->notifyScreenState(I)V

    .line 53
    return-void
.end method
