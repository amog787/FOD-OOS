.class public interface abstract Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Callback;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getDeviceTimeZone()Ljava/lang/String;
.end method

.method public abstract isAutoTimeZoneDetectionEnabled()Z
.end method

.method public abstract isDeviceTimeZoneInitialized()Z
.end method

.method public abstract setDeviceTimeZone(Ljava/lang/String;)V
.end method
