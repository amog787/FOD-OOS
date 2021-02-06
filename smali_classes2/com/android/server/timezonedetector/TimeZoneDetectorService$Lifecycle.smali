.class public Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimeZoneDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/TimeZoneDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->access$000(Landroid/content/Context;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    move-result-object v0

    .line 62
    .local v0, "service":Lcom/android/server/timezonedetector/TimeZoneDetectorService;
    const-string v1, "time_zone_detector"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    return-void
.end method
