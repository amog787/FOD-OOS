.class public interface abstract Lcom/android/server/wm/IOpDisplayContent;
.super Ljava/lang/Object;
.source "IOpDisplayContent.java"


# virtual methods
.method public abstract handleAppTransitionReady()I
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;Landroid/view/Display;Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract makeCovered()Landroid/view/SurfaceControl$Builder;
.end method

.method public abstract prepareSurfaces()V
.end method

.method public abstract removeImmediately()V
.end method

.method public abstract setBooleanNotificationRemoteInputeDraft(Z)V
.end method

.method public abstract setFocusedApp(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract setSourceBoundFromIntent(Landroid/content/Intent;)V
.end method
