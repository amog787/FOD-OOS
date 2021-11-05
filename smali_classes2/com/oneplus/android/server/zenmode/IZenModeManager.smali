.class public interface abstract Lcom/oneplus/android/server/zenmode/IZenModeManager;
.super Ljava/lang/Object;
.source "IZenModeManager.java"


# virtual methods
.method public abstract addCallback(Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;)V
.end method

.method public abstract canActivityGo(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract canEnterPictureInPicture(Ljava/lang/String;I)Z
.end method

.method public abstract canInitAppOpVisibilityLw(Ljava/lang/String;II)Z
.end method

.method public abstract canSetAppOpVisibilityLw(Ljava/lang/String;I)Z
.end method

.method public abstract canSetLights(III)Z
.end method

.method public abstract canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isZenModeOn()Z
.end method

.method public abstract needBlockWakeUp(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract shouldBlockNotifSound(Ljava/lang/String;)Z
.end method
