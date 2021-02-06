.class public final synthetic Lcom/android/server/timezonedetector/-$$Lambda$YxXJMUW4yEyBSw8jCvXmZTpthE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/-$$Lambda$YxXJMUW4yEyBSw8jCvXmZTpthE8;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/-$$Lambda$YxXJMUW4yEyBSw8jCvXmZTpthE8;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->handleAutoTimeZoneDetectionChanged()V

    return-void
.end method
