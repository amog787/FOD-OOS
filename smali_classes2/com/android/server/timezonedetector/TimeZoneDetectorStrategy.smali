.class public interface abstract Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategy.java"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract handleAutoTimeZoneDetectionChanged()V
.end method

.method public abstract suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V
.end method

.method public abstract suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
.end method
