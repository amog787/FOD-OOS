.class public final synthetic Lcom/android/server/display/-$$Lambda$AmbientBrightnessStatsTracker$vQZYn_dAhbvzT-Un4vvpuyIATII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$AmbientBrightnessStatsTracker$vQZYn_dAhbvzT-Un4vvpuyIATII;->f$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    return-void
.end method


# virtual methods
.method public final elapsedTimeMillis()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$AmbientBrightnessStatsTracker$vQZYn_dAhbvzT-Un4vvpuyIATII;->f$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->lambda$new$0$AmbientBrightnessStatsTracker()J

    move-result-wide v0

    return-wide v0
.end method
