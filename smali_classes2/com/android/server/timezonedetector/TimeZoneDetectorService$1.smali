.class Lcom/android/server/timezonedetector/TimeZoneDetectorService$1;
.super Landroid/database/ContentObserver;
.source "TimeZoneDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timezonedetector/TimeZoneDetectorService;->create(Landroid/content/Context;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$service:Lcom/android/server/timezonedetector/TimeZoneDetectorService;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 81
    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$1;->val$service:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 83
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService$1;->val$service:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->handleAutoTimeZoneDetectionChanged()V

    .line 84
    return-void
.end method
