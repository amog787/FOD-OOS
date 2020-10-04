.class public interface abstract Lcom/android/server/wm/IOpQuickReply;
.super Ljava/lang/Object;
.source "IOpQuickReply.java"


# virtual methods
.method public abstract checkAndAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract exitQuickReply()V
.end method

.method public abstract focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract getIMDimAmount()F
.end method

.method public abstract getImBound()Landroid/graphics/Rect;
.end method

.method public abstract getQuickReplyList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQuickReplyOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;)I
.end method

.method public abstract isForceShowStatusBar(Ljava/lang/String;)Z
.end method

.method public abstract isInCameraActivityList(Ljava/lang/String;)Z
.end method

.method public abstract isInIMEKilledList(I)Z
.end method

.method public abstract isQuickReplyExiting()Z
.end method

.method public abstract isQuickReplyIM(Lcom/android/server/wm/AppWindowToken;)Z
.end method

.method public abstract isQuickReplyIM(Ljava/lang/String;)Z
.end method

.method public abstract isQuickReplyIME(Ljava/lang/String;)Z
.end method

.method public abstract isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z
.end method

.method public abstract isQuickReplyRunning()Z
.end method

.method public abstract killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V
.end method

.method public abstract notifyImeShow(Ljava/lang/String;)V
.end method

.method public abstract notifyImeVisibilityChanged(ZI)V
.end method

.method public abstract onConfigChanged()V
.end method

.method public abstract setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
.end method

.method public abstract setKeyguardDone(Z)V
.end method

.method public abstract setQuickReplyRunning(Z)V
.end method

.method public abstract setResumedApp(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract systemReady()V
.end method

.method public abstract updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method
