.class public interface abstract Lcom/android/server/wm/WindowProcessListener;
.super Ljava/lang/Object;
.source "WindowProcessListener.java"


# virtual methods
.method public abstract appDied()V
.end method

.method public abstract clearProfilerIfNeeded()V
.end method

.method public abstract getCpuTime()J
.end method

.method public abstract isRemoved()Z
.end method

.method public abstract onStartActivity(IZLjava/lang/String;J)V
.end method

.method public abstract setPendingUiClean(Z)V
.end method

.method public abstract setPendingUiCleanAndForceProcessStateUpTo(I)V
.end method

.method public abstract updateProcessInfo(ZZZ)V
.end method

.method public abstract updateServiceConnectionActivities()V
.end method

.method public abstract writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
.end method
