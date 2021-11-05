.class interface abstract Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;
.super Ljava/lang/Object;
.source "IOnePlusSceneCallBlockService.java"


# virtual methods
.method public abstract isBlockDisplayOverApp(ILjava/lang/String;)Z
.end method

.method public abstract isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z
.end method

.method public abstract isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z
.end method

.method public abstract isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract isStreamMutedByCallBlocker(Ljava/lang/String;I)Z
.end method

.method public abstract isUsageMutedByCallBlocker(Ljava/lang/String;I)Z
.end method

.method public abstract isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract needUpdate(Landroid/content/Intent;)Z
.end method

.method public abstract updatePis()V
.end method
