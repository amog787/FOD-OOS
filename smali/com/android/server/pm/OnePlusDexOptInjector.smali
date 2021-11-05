.class public Lcom/android/server/pm/OnePlusDexOptInjector;
.super Ljava/lang/Object;
.source "OnePlusDexOptInjector.java"


# static fields
.field private static sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpState(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 32
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->dumpState(Ljava/io/PrintWriter;)V

    .line 35
    :cond_0
    return-void
.end method

.method public static initInstance(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 26
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->initInstance(Lcom/android/server/pm/PackageManagerService;)V

    .line 29
    :cond_0
    return-void
.end method

.method private static makeSureInstanceInitialized()Z
    .locals 1

    .line 67
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_dexoptmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 69
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOnePlusDexOptManager;

    sput-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    .line 72
    :cond_0
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "dexPath"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOnePlusDexOptManager;->notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static notifyPrimaryDexDone(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->notifyPrimaryDexDone(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public static packageRemoved(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->packageRemoved(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0}, Lcom/android/server/pm/IOnePlusDexOptManager;->shutdown()V

    .line 41
    :cond_0
    return-void
.end method

.method public static startUser(IZ)V
    .locals 1
    .param p0, "userId"    # I
    .param p1, "foreground"    # Z

    .line 62
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()Z

    .line 63
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOnePlusDexOptManager;->startUser(IZ)V

    .line 64
    return-void
.end method
