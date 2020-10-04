.class public Lcom/android/server/pm/OpCompatibilityInjector;
.super Ljava/lang/Object;
.source "OpCompatibilityInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final GPU_OUT_OF_MEMORY:I = 0xa8

.field private static final TAG:Ljava/lang/String;

.field private static mInited:Z

.field private static sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    .line 28
    const-class v0, Lcom/android/server/pm/OpCompatibilityInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "abi"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 71
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 72
    return-object p0

    .line 74
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.abiOverride()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 78
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCompatibilityHelper;->abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static customizePackageIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 49
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.customizePackageIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 56
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpCompatibilityHelper;->customizePackageIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    .line 57
    return-void
.end method

.method public static dumpToString()Ljava/lang/String;
    .locals 2

    .line 93
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    return-object v0

    .line 96
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.dumpToString()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 100
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0}, Lcom/android/server/pm/IOpCompatibilityHelper;->dumpToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I
    .param p1, "verifyStr"    # Ljava/lang/String;

    .line 104
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 105
    const-string v0, ""

    return-object v0

    .line 107
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.dumpToString type"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 111
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCompatibilityHelper;->getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initCompatOnlineConfig()V
    .locals 2

    .line 60
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.initCompatOnlineConfig()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 67
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0}, Lcom/android/server/pm/IOpCompatibilityHelper;->initCompatOnlineConfig()V

    .line 68
    return-void
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-eqz v0, :cond_0

    .line 38
    return-void

    .line 40
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 44
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpCompatibilityHelper;->initInstance(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    .line 46
    return-void
.end method

.method public static isInConfigList(ILjava/lang/String;)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "verifyStr"    # Ljava/lang/String;

    .line 82
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.isInConfigList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 89
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    .line 115
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_compatibility_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 117
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpCompatibilityHelper;

    sput-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    .line 119
    :cond_0
    return-void
.end method
