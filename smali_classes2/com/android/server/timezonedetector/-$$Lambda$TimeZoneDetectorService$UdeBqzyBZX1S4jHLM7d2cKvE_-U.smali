.class public final synthetic Lcom/android/server/timezonedetector/-$$Lambda$TimeZoneDetectorService$UdeBqzyBZX1S4jHLM7d2cKvE_-U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

.field public final synthetic f$1:Landroid/app/timezonedetector/ManualTimeZoneSuggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/-$$Lambda$TimeZoneDetectorService$UdeBqzyBZX1S4jHLM7d2cKvE_-U;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    iput-object p2, p0, Lcom/android/server/timezonedetector/-$$Lambda$TimeZoneDetectorService$UdeBqzyBZX1S4jHLM7d2cKvE_-U;->f$1:Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/-$$Lambda$TimeZoneDetectorService$UdeBqzyBZX1S4jHLM7d2cKvE_-U;->f$0:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    iget-object v1, p0, Lcom/android/server/timezonedetector/-$$Lambda$TimeZoneDetectorService$UdeBqzyBZX1S4jHLM7d2cKvE_-U;->f$1:Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->lambda$suggestManualTimeZone$0$TimeZoneDetectorService(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)V

    return-void
.end method
