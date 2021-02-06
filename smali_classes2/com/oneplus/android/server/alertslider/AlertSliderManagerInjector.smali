.class public Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;
.super Ljava/lang/Object;
.source "AlertSliderManagerInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "AlertSliderManagerInjector"

.field private static sAlertSliderManager:Lcom/oneplus/android/server/alertslider/IAlertSliderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlertSliderMode()I
    .locals 2

    .line 42
    const/4 v0, -0x1

    .line 43
    .local v0, "state":I
    sget-object v1, Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;->sAlertSliderManager:Lcom/oneplus/android/server/alertslider/IAlertSliderManager;

    if-nez v1, :cond_0

    .line 44
    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alertslider_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/alertslider/IAlertSliderManager;

    sput-object v1, Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;->sAlertSliderManager:Lcom/oneplus/android/server/alertslider/IAlertSliderManager;

    .line 46
    :cond_0
    sget-object v1, Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;->sAlertSliderManager:Lcom/oneplus/android/server/alertslider/IAlertSliderManager;

    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v1}, Lcom/oneplus/android/server/alertslider/IAlertSliderManager;->getAlertSliderMode()I

    move-result v0

    .line 48
    :cond_1
    return v0
.end method

.method public static initAlertSliderManager(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioService"    # Lcom/android/server/audio/AudioService;

    .line 34
    sget-object v0, Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;->sAlertSliderManager:Lcom/oneplus/android/server/alertslider/IAlertSliderManager;

    if-nez v0, :cond_0

    .line 35
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alertslider_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/alertslider/IAlertSliderManager;

    sput-object v0, Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;->sAlertSliderManager:Lcom/oneplus/android/server/alertslider/IAlertSliderManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;->sAlertSliderManager:Lcom/oneplus/android/server/alertslider/IAlertSliderManager;

    if-eqz v0, :cond_1

    .line 38
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/alertslider/IAlertSliderManager;->initInstance(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    .line 39
    :cond_1
    return-void
.end method
