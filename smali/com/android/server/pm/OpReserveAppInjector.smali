.class public Lcom/android/server/pm/OpReserveAppInjector;
.super Ljava/lang/Object;
.source "OpReserveAppInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PackageManager[ReserveApp]"

.field public static runningDexoptState:Z

.field private static sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->runningDexoptState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addForInitLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/PackageSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "codePathString"    # Ljava/lang/String;
    .param p5, "resourcePathString"    # Ljava/lang/String;
    .param p6, "versionCode"    # J
    .param p8, "newPkgChangedPaths"    # Z

    .line 63
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.addForInitLI()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 67
    sget-object v2, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/IOpReserveAppManager;->addForInitLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/PackageSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method public static checkAppHasDeleted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 89
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.checkAppHasDeleted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 93
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cleanUp(Ljava/io/File;)Z
    .locals 2
    .param p0, "codeFile"    # Ljava/io/File;

    .line 97
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 101
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->cleanUp(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static cleanUpResourcesLI(Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;)V
    .locals 2
    .param p0, "codeFile"    # Ljava/io/File;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;

    .line 105
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.cleanUpResourcesLI()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 109
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpReserveAppManager;->cleanUpResourcesLI(Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;)V

    .line 110
    return-void
.end method

.method public static collectReserveApps(I)V
    .locals 2
    .param p0, "scanFlags"    # I

    .line 72
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.collectReserveApps()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 76
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->collectReserveApps(I)V

    .line 77
    return-void
.end method

.method public static initInstance(Lcom/android/server/pm/PackageManagerService$PmsInner;Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p0, "pmsInner"    # Lcom/android/server/pm/PackageManagerService$PmsInner;
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 45
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 49
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/pm/IOpReserveAppManager;->initInstance(Lcom/android/server/pm/PackageManagerService$PmsInner;Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 50
    return-void
.end method

.method public static isInstallForOtherUser(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 128
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.isInstallForOtherUser()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isReserveApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "codePath"    # Ljava/lang/String;

    .line 53
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.isReserveApp()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 57
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    .line 121
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_reserve_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 123
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpReserveAppManager;

    sput-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    .line 125
    :cond_0
    return-void
.end method

.method public static pruneNonExistReserveApps(Ljava/util/Collection;Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p0, "packageSettings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.pruneNonExistReserveApps()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 85
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpReserveAppManager;->pruneNonExistReserveApps(Ljava/util/Collection;Landroid/util/ArrayMap;)V

    .line 86
    return-void
.end method

.method public static systemReady(Z)V
    .locals 2
    .param p0, "deviceUpgrading"    # Z

    .line 113
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.systemReady()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 117
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->systemReady(Z)V

    .line 118
    return-void
.end method
