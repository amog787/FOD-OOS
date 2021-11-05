.class public Lcom/oneplus/android/server/zenmode/ZenModeInjector;
.super Ljava/lang/Object;
.source "ZenModeInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;
    }
.end annotation


# static fields
.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeInjector"

.field private static sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallback(Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;)V
    .locals 1
    .param p0, "callback"    # Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;

    .line 55
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 57
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->addCallback(Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;)V

    .line 58
    return-void
.end method

.method public static canActivityGo(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 72
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 73
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 74
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->canActivityGo(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public static canEnterPictureInPicture(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 79
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 81
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->canEnterPictureInPicture(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static canInitAppOpVisibilityLw(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 85
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 87
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->canInitAppOpVisibilityLw(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static canSetAppOpVisibilityLw(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 91
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 92
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 93
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->canSetAppOpVisibilityLw(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static canSetLights(III)Z
    .locals 1
    .param p0, "lightId"    # I
    .param p1, "lightMode"    # I
    .param p2, "brightnessMode"    # I

    .line 105
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 107
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->canSetLights(III)Z

    move-result v0

    return v0
.end method

.method public static canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 98
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 100
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static initInstance()V
    .locals 1

    .line 36
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_zenmode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/zenmode/IZenModeManager;

    sput-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    .line 39
    :cond_0
    return-void
.end method

.method public static isZenModeOn()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 44
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 45
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->isZenModeOn()Z

    move-result v0

    return v0
.end method

.method public static needBlockWakeUp(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "reasonUid"    # I
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 65
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 67
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->needBlockWakeUp(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldBlockNotifSound(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->initInstance()V

    .line 51
    sget-object v0, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->sZenModeManager:Lcom/oneplus/android/server/zenmode/IZenModeManager;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/zenmode/IZenModeManager;->shouldBlockNotifSound(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
