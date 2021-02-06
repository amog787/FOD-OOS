.class public Lcom/android/server/pm/OpCotaAppInjector;
.super Ljava/lang/Object;
.source "OpCotaAppInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PackageManager[CotaApp]"

.field private static sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpCotaAppInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCotaSystemApps(II)V
    .locals 2
    .param p0, "defParseFlags"    # I
    .param p1, "defScanFlags"    # I

    .line 43
    sget-boolean v0, Lcom/android/server/pm/OpCotaAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "PackageManager[CotaApp]"

    const-string v1, "call OpCotaAppInjector.collectCotaSystemApps()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpCotaAppInjector;->makeSureInstanceInitialized()V

    .line 47
    sget-object v0, Lcom/android/server/pm/OpCotaAppInjector;->sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;

    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOpCotaAppManager;->collectCotaSystemApps(II)V

    .line 50
    :cond_1
    return-void
.end method

.method public static init(Lcom/android/server/pm/PackageManagerService$PmsInner;Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p0, "pmsInner"    # Lcom/android/server/pm/PackageManagerService$PmsInner;
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 33
    sget-boolean v0, Lcom/android/server/pm/OpCotaAppInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "PackageManager[CotaApp]"

    const-string v1, "call OpCotaAppInjector.init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    invoke-static {}, Lcom/android/server/pm/OpCotaAppInjector;->makeSureInstanceInitialized()V

    .line 37
    sget-object v0, Lcom/android/server/pm/OpCotaAppInjector;->sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/pm/IOpCotaAppManager;->init(Lcom/android/server/pm/PackageManagerService$PmsInner;Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 40
    :cond_1
    return-void
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/pm/OpCotaAppInjector;->sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_cota_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 55
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpCotaAppManager;

    sput-object v0, Lcom/android/server/pm/OpCotaAppInjector;->sOpCotaAppManager:Lcom/android/server/pm/IOpCotaAppManager;

    .line 57
    :cond_0
    return-void
.end method
