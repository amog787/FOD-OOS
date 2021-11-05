.class public interface abstract Lcom/android/server/wm/IOpActivityTaskManagerService;
.super Ljava/lang/Object;
.source "IOpActivityTaskManagerService.java"


# virtual methods
.method public abstract getAllTopAppInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusAppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartActivityFromRecents()Z
.end method

.method public abstract getTopRunningPackageName()Ljava/lang/String;
.end method

.method public abstract init(Lcom/android/server/wm/ActivityTaskManagerService;)V
.end method

.method public abstract isKeyguardGoingAway()Z
.end method

.method public abstract setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract setStartActivityFromRecents(Z)V
.end method

.method public abstract setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
.end method
