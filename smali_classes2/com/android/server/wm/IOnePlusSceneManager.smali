.class interface abstract Lcom/android/server/wm/IOnePlusSceneManager;
.super Ljava/lang/Object;
.source "IOnePlusSceneManager.java"


# virtual methods
.method public abstract disableSceneButtonLockFeature(Landroid/content/Context;Z)V
.end method

.method public abstract endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
.end method

.method public abstract gameModeShowToolBox(II)Z
.end method

.method public abstract handleEvaluateGameMode(ZZ)V
.end method

.method public abstract handleEvaluateReadMode(I)V
.end method

.method public abstract handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
.end method

.method public abstract initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V
.end method

.method public abstract initOemSceneModeActivityStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
.end method

.method public abstract packageChanged(Ljava/lang/String;I)V
.end method

.method public abstract putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z
.end method

.method public abstract startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract startUserSwitching()V
.end method

.method public abstract stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract updateDisableSceneScreenEffectFlag(I)V
.end method

.method public abstract updateSceneScreenEffectFlag(I)V
.end method

.method public abstract updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V
.end method
