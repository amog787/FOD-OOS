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

    .line 31
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()V

    .line 32
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->dumpState(Ljava/io/PrintWriter;)V

    .line 33
    return-void
.end method

.method public static initInstance(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 26
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()V

    .line 27
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->initInstance(Lcom/android/server/pm/PackageManagerService;)V

    .line 28
    return-void
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_dexoptmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 53
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOnePlusDexOptManager;

    sput-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    .line 55
    :cond_0
    return-void
.end method

.method public static notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "dexPath"    # Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()V

    .line 47
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/pm/IOnePlusDexOptManager;->notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static packageRemoved(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()V

    .line 42
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOnePlusDexOptManager;->packageRemoved(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/android/server/pm/OnePlusDexOptInjector;->makeSureInstanceInitialized()V

    .line 37
    sget-object v0, Lcom/android/server/pm/OnePlusDexOptInjector;->sOnePlusDexOptManager:Lcom/android/server/pm/IOnePlusDexOptManager;

    invoke-interface {v0}, Lcom/android/server/pm/IOnePlusDexOptManager;->shutdown()V

    .line 38
    return-void
.end method
