.class Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AmbientBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Timer"
.end annotation


# instance fields
.field private final clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

.field private startTimeMillis:J

.field private started:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;)V
    .locals 0
    .param p1, "clock"    # Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    .line 320
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 324
    return-void
.end method

.method public start()V
    .locals 2

    .line 327
    iget-boolean v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    invoke-interface {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    .line 331
    :cond_0
    return-void
.end method

.method public totalDurationSec()F
    .locals 4

    .line 338
    iget-boolean v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;

    invoke-interface {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;->elapsedTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 341
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
