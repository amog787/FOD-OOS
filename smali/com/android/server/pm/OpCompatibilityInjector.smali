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

    .line 28
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    .line 29
    const-class v0, Lcom/android/server/pm/OpCompatibilityInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "abi"    # Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 105
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 106
    return-object p0

    .line 108
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.abiOverride()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 112
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCompatibilityHelper;->abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static customizeHardwareAccelerateIfNeeded(Landroid/content/pm/parsing/ParsingPackage;)V
    .locals 2
    .param p0, "parsingPackage"    # Landroid/content/pm/parsing/ParsingPackage;

    .line 83
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.customizeHardwareAccelerateIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 90
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpCompatibilityHelper;->customizeHardwareAccelerateIfNeeded(Landroid/content/pm/parsing/ParsingPackage;)V

    .line 91
    return-void
.end method

.method public static customizePackageIfNeeded(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .locals 2
    .param p0, "parsedPackage"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 50
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.customizePackageIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 57
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpCompatibilityHelper;->customizePackageIfNeeded(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    .line 58
    return-void
.end method

.method public static customizeTargetSdkIfNeeded(Landroid/content/pm/parsing/ParsingPackage;)V
    .locals 2
    .param p0, "parsingPackage"    # Landroid/content/pm/parsing/ParsingPackage;

    .line 72
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.customizeTargetSdkIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 79
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpCompatibilityHelper;->customizeTargetSdkIfNeeded(Landroid/content/pm/parsing/ParsingPackage;)V

    .line 80
    return-void
.end method

.method public static customizeVMSafeModeIfNeeded(Landroid/content/pm/parsing/ParsingPackage;)V
    .locals 2
    .param p0, "parsingPackage"    # Landroid/content/pm/parsing/ParsingPackage;

    .line 61
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.customizeVMSafeModeIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 68
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpCompatibilityHelper;->customizeVMSafeModeIfNeeded(Landroid/content/pm/parsing/ParsingPackage;)V

    .line 69
    return-void
.end method

.method public static dumpToString()Ljava/lang/String;
    .locals 2

    .line 127
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 128
    const-string v0, ""

    return-object v0

    .line 130
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.dumpToString()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 134
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0}, Lcom/android/server/pm/IOpCompatibilityHelper;->dumpToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I
    .param p1, "verifyStr"    # Ljava/lang/String;

    .line 138
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 139
    const-string v0, ""

    return-object v0

    .line 141
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.dumpToString type"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 145
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCompatibilityHelper;->getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initCompatOnlineConfig()V
    .locals 2

    .line 94
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.initCompatOnlineConfig()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 101
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0}, Lcom/android/server/pm/IOpCompatibilityHelper;->initCompatOnlineConfig()V

    .line 102
    return-void
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-eqz v0, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 45
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpCompatibilityHelper;->initInstance(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    .line 47
    return-void
.end method

.method public static isInConfigList(ILjava/lang/String;)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "verifyStr"    # Ljava/lang/String;

    .line 116
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->mInited:Z

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/OpCompatibilityInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpCompatibilityInjector.isInConfigList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    invoke-static {}, Lcom/android/server/pm/OpCompatibilityInjector;->makeSureInstanceInitialized()V

    .line 123
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    .line 149
    sget-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_compatibility_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 151
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpCompatibilityHelper;

    sput-object v0, Lcom/android/server/pm/OpCompatibilityInjector;->sOpCompatibilityHelper:Lcom/android/server/pm/IOpCompatibilityHelper;

    .line 153
    :cond_0
    return-void
.end method
