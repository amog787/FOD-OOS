.class public Lcom/android/server/wm/OnePlusSceneManagerInjector;
.super Ljava/lang/Object;
.source "OnePlusSceneManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OnePlusSceneManagerInjector$OemSceneModeActivityStack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusSceneManagerInjector"

.field private static sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableSceneButtonLockFeature(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toDisable"    # Z

    .line 61
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 62
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->disableSceneButtonLockFeature(Landroid/content/Context;Z)V

    .line 63
    return-void
.end method

.method public static endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 71
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 72
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V

    .line 73
    return-void
.end method

.method public static gameModeShowToolBox(II)Z
    .locals 1
    .param p0, "positionX"    # I
    .param p1, "positionY"    # I

    .line 144
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 145
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->gameModeShowToolBox(II)Z

    move-result v0

    return v0
.end method

.method public static handleEvaluateGameMode(ZZ)V
    .locals 1
    .param p0, "enabled"    # Z
    .param p1, "enabledESportMode"    # Z

    .line 112
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 113
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->handleEvaluateGameMode(ZZ)V

    .line 114
    return-void
.end method

.method public static handleEvaluateReadMode(I)V
    .locals 1
    .param p0, "mode"    # I

    .line 107
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 108
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->handleEvaluateReadMode(I)V

    .line 109
    return-void
.end method

.method public static handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1
    .param p0, "kc"    # Lcom/android/server/wm/KeyguardController;
    .param p1, "keyguardShowing"    # Z
    .param p2, "occluded"    # Z
    .param p3, "acss"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 51
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 52
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOnePlusSceneManager;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 53
    return-void
.end method

.method public static init(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1
    .param p0, "acs"    # Lcom/android/server/wm/ActivityStack;
    .param p1, "acss"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 46
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 47
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->initOemSceneModeActivityStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    .line 48
    return-void
.end method

.method public static initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 1
    .param p0, "networkPolicy"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 128
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 129
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 130
    return-void
.end method

.method private static initOnePlusSceneManager()V
    .locals 1

    .line 40
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scenemode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOnePlusSceneManager;

    sput-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    .line 43
    :cond_0
    return-void
.end method

.method public static packageChanged(Ljava/lang/String;I)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 138
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 139
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->packageChanged(Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method public static putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "target"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "sourceRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 122
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 123
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 124
    return-void
.end method

.method public static sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 134
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 135
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V

    .line 136
    return-void
.end method

.method public static shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "ams"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 56
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 57
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0
.end method

.method public static startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 91
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 92
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 93
    return-void
.end method

.method public static startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 96
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 97
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 98
    return-void
.end method

.method public static startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 101
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 102
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 103
    return-void
.end method

.method public static startUserSwitching()V
    .locals 1

    .line 66
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 67
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0}, Lcom/android/server/wm/IOnePlusSceneManager;->startUserSwitching()V

    .line 68
    return-void
.end method

.method public static stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "fromActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "toActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 86
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 87
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 88
    return-void
.end method

.method public static updateDisableSceneScreenEffectFlag(I)V
    .locals 1
    .param p0, "toDisableMode"    # I

    .line 116
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 117
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->updateDisableSceneScreenEffectFlag(I)V

    .line 118
    return-void
.end method

.method public static updateSceneScreenEffectFlag(I)V
    .locals 1
    .param p0, "disableScreenEffectMode"    # I

    .line 81
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 82
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOnePlusSceneManager;->updateSceneScreenEffectFlag(I)V

    .line 83
    return-void
.end method

.method public static updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 76
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->initOnePlusSceneManager()V

    .line 77
    sget-object v0, Lcom/android/server/wm/OnePlusSceneManagerInjector;->sOnePlusSceneManager:Lcom/android/server/wm/IOnePlusSceneManager;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOnePlusSceneManager;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V

    .line 78
    return-void
.end method
