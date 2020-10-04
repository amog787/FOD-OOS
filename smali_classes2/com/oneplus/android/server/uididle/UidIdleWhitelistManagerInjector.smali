.class public Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;
.super Ljava/lang/Object;
.source "UidIdleWhitelistManagerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "UidIdleWhitelistManagerInjector"

.field private static uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .line 75
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    sput-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    .line 79
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "UidIdleWhitelistManagerInjector"

    const-string v1, "in services.jar init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    invoke-interface {v0}, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;->init()V

    .line 83
    return-void
.end method

.method public static isBackgroundActivityWhitelist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    sput-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    .line 68
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "UidIdleWhitelistManagerInjector"

    const-string v1, "in services.jar isBackgroundActivityWhitelist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;->isBackgroundActivityWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBackgroundWhitelist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    sput-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    .line 57
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "UidIdleWhitelistManagerInjector"

    const-string v1, "in services.jar isBackgroundWhitelist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;->isBackgroundWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInAudioWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    sput-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    .line 46
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 47
    const-string v0, "UidIdleWhitelistManagerInjector"

    const-string v1, "in services.jar isInAudioWhiteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;->isInAudioWhiteList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shoudSkipIdle(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    sput-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    .line 35
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 36
    const-string v0, "UidIdleWhitelistManagerInjector"

    const-string v1, "in services.jar shoudSkipIdle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;->shoudSkipIdle(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
