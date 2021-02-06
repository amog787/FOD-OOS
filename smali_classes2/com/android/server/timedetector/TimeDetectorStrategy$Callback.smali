.class public interface abstract Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;
.super Ljava/lang/Object;
.source "TimeDetectorStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/TimeDetectorStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract acquireWakeLock()V
.end method

.method public abstract elapsedRealtimeMillis()J
.end method

.method public abstract isAutoTimeDetectionEnabled()Z
.end method

.method public abstract releaseWakeLock()V
.end method

.method public abstract setSystemClock(J)V
.end method

.method public abstract systemClockMillis()J
.end method

.method public abstract systemClockUpdateThresholdMillis()I
.end method
