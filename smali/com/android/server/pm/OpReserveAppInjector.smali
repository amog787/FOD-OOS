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

    .line 31
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->runningDexoptState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addForInitLI(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "codePathString"    # Ljava/lang/String;
    .param p5, "resourcePathString"    # Ljava/lang/String;
    .param p6, "versionCode"    # J
    .param p8, "newPkgChangedPaths"    # Z

    .line 58
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.addForInitLI()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 62
    sget-object v2, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lcom/android/server/pm/IOpReserveAppManager;->addForInitLI(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method public static checkAppHasDeleted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 92
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.checkAppHasDeleted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 96
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cleanUp(Ljava/io/File;)Z
    .locals 2
    .param p0, "codeFile"    # Ljava/io/File;

    .line 100
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 104
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->cleanUp(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static cleanUpResourcesLI(Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;)V
    .locals 2
    .param p0, "codeFile"    # Ljava/io/File;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;

    .line 108
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.cleanUpResourcesLI()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 112
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpReserveAppManager;->cleanUpResourcesLI(Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;)V

    .line 113
    return-void
.end method

.method public static collectReserveApps(I)V
    .locals 2
    .param p0, "scanFlags"    # I

    .line 67
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.collectReserveApps()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 71
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->collectReserveApps(I)V

    .line 72
    return-void
.end method

.method public static initInstance(Lcom/android/server/pm/PackageManagerService$PmsInner;)V
    .locals 2
    .param p0, "pmsInner"    # Lcom/android/server/pm/PackageManagerService$PmsInner;

    .line 40
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.initInstance()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 44
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->initInstance(Lcom/android/server/pm/PackageManagerService$PmsInner;)V

    .line 45
    return-void
.end method

.method public static isReserveApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "codePath"    # Ljava/lang/String;

    .line 48
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.isReserveApp()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 52
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    .line 116
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_reserve_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 118
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpReserveAppManager;

    sput-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    .line 120
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
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p0, "packageSettings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.pruneNonExistReserveApps()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 80
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpReserveAppManager;->pruneNonExistReserveApps(Ljava/util/Collection;Landroid/util/ArrayMap;)V

    .line 81
    return-void
.end method

.method public static setNativeLibraryPaths(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 84
    sget-boolean v0, Lcom/android/server/pm/OpReserveAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "call OpReserveAppInjector.setNativeLibraryPaths()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpReserveAppInjector;->makeSureInstanceInitialized()V

    .line 88
    sget-object v0, Lcom/android/server/pm/OpReserveAppInjector;->sOpReserveAppManager:Lcom/android/server/pm/IOpReserveAppManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpReserveAppManager;->setNativeLibraryPaths(Landroid/content/pm/PackageParser$Package;)V

    .line 89
    return-void
.end method
