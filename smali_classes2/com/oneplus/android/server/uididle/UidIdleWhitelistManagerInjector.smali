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

    .line 95
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    sput-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    .line 99
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "UidIdleWhitelistManagerInjector"

    const-string v1, "in services.jar init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_2

    .line 104
    return-void

    .line 106
    :cond_2
    invoke-interface {v0}, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;->init()V

    .line 108
    return-void
.end method

.method public static isBackgroundActivityWhitelist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    sput-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    .line 83
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "UidIdleWhitelistManagerInjector"

    const-string v1, "in services.jar isBackgroundActivityWhitelist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_2

    .line 88
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_2
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;->isBackgroundActivityWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBackgroundWhitelist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    sput-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    .line 67
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "UidIdleWhitelistManagerInjector"

    const-string v1, "in services.jar isBackgroundWhitelist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_2

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_2
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;->isBackgroundWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInAudioWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    sput-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    .line 51
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "UidIdleWhitelistManagerInjector"

    const-string v1, "in services.jar isInAudioWhiteList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_2

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_2
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

    .line 39
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->uidIdleWhitelistManager:Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;

    if-nez v0, :cond_2

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_2
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/uididle/IUidIdleWhitelistManager;->shoudSkipIdle(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
