.class public Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;
.super Ljava/lang/Object;
.source "OpBluetoothCarkitIdentificationInjector.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sOpBluetoothCarkitIdentification:Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "persist.debug.bluetooth.carkit.identification"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCarkit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;

    .line 54
    sget-boolean v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCarkit, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->sOpBluetoothCarkitIdentification:Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;->addCarkit(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    return-void
.end method

.method private static checkInterface()Z
    .locals 2

    .line 30
    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->sOpBluetoothCarkitIdentification:Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_carkit_identification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;

    sput-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->sOpBluetoothCarkitIdentification:Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;

    .line 35
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->sOpBluetoothCarkitIdentification:Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;

    if-nez v0, :cond_1

    .line 36
    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->TAG:Ljava/lang/String;

    const-string v1, "sOpBluetoothCarkitIdentificaiton is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static close()V
    .locals 2

    .line 70
    sget-boolean v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->sOpBluetoothCarkitIdentification:Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;

    invoke-interface {v0}, Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;->close()V

    .line 75
    :cond_1
    return-void
.end method

.method public static isCarkit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;

    .line 44
    sget-boolean v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarkit, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->sOpBluetoothCarkitIdentification:Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;->isCarkit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static removeCarkit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;

    .line 62
    sget-boolean v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCarkit, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->checkInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->sOpBluetoothCarkitIdentification:Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/IOpBluetoothCarkitIdentification;->removeCarkit(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    return-void
.end method
