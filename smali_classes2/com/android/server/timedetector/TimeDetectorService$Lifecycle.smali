.class public Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/TimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timedetector/TimeDetectorService;->access$000(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;

    move-result-object v0

    .line 58
    .local v0, "service":Lcom/android/server/timedetector/TimeDetectorService;
    const-string v1, "time_detector"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 59
    return-void
.end method
