.class public interface abstract Lcom/android/server/wm/IOpScreenModeService;
.super Ljava/lang/Object;
.source "IOpScreenModeService.java"


# virtual methods
.method public abstract adjustDensityForUser(II)I
.end method

.method public abstract getPreferredModeId(Lcom/android/server/wm/WindowState;I)I
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
.end method

.method public abstract onRecordingConfigChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSetDensityForUser(II)V
.end method

.method public abstract pokeDynamicVsyncAnimation(I)V
.end method

.method public abstract setRateDirectly(II)V
.end method

.method public abstract setRefreshRate(Landroid/os/IBinder;I)V
.end method

.method public abstract setRefreshRate(Lcom/android/server/wm/ActivityRecord;I)V
.end method

.method public abstract updateGlobalModeId(I)I
.end method

.method public abstract updateInputMethod(Z)V
.end method

.method public abstract updateKeepHighVsync(Z)V
.end method
