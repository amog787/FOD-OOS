.class public Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;
.super Ljava/lang/Object;
.source "OnePlusSceneCallBlockServiceInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusSceneCallBlockManagerInjector"

.field private static sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 1

    .line 30
    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 32
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    sput-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    .line 34
    :cond_0
    return-void
.end method

.method public static isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z
    .locals 7
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p4, "callingUid"    # I
    .param p5, "isFromSystemUI"    # Z

    .line 37
    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    .line 38
    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z

    move-result v0

    return v0
.end method

.method public static isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 42
    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    .line 43
    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 62
    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    .line 63
    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 67
    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    .line 68
    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public static isStreamMutedByCallBlocker(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "streamType"    # I

    .line 57
    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    .line 58
    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isStreamMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isUsageMutedByCallBlocker(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "audioUsage"    # I

    .line 52
    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    .line 53
    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isUsageMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p0, "contextPkgName"    # Ljava/lang/String;
    .param p1, "usageHint"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    .line 48
    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updatePis(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    .line 75
    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->updatePis(Ljava/lang/String;)V

    .line 76
    return-void
.end method
