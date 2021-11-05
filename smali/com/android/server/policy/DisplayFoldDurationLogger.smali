.class Lcom/android/server/policy/DisplayFoldDurationLogger;
.super Ljava/lang/Object;
.source "DisplayFoldDurationLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DisplayFoldDurationLogger$ScreenState;
    }
.end annotation


# static fields
.field private static final LOG_SUBTYPE_DURATION_MASK:I = -0x80000000

.field private static final LOG_SUBTYPE_FOLDED:I = 0x1

.field private static final LOG_SUBTYPE_UNFOLDED:I = 0x0

.field static final SCREEN_STATE_OFF:I = 0x0

.field static final SCREEN_STATE_ON_FOLDED:I = 0x2

.field static final SCREEN_STATE_ON_UNFOLDED:I = 0x1

.field static final SCREEN_STATE_UNKNOWN:I = -0x1


# instance fields
.field private mLastChanged:Ljava/lang/Long;

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mScreenState:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 54
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method private isOn()Z
    .locals 3

    .line 115
    iget v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private log()V
    .locals 7

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 105
    return-void

    .line 102
    :cond_1
    const v0, -0x7fffffff

    .line 103
    .local v0, "subtype":I
    goto :goto_0

    .line 99
    .end local v0    # "subtype":I
    :cond_2
    const/high16 v0, -0x80000000

    .line 100
    .restart local v0    # "subtype":I
    nop

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x63a

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    .line 109
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 110
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 112
    return-void
.end method


# virtual methods
.method logFocusedAppWithFoldState(ZLjava/lang/String;)V
    .locals 3
    .param p1, "folded"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x63a

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 87
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 89
    invoke-virtual {v1, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 90
    return-void
.end method

.method onFinishedGoingToSleep()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->log()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 71
    return-void
.end method

.method onFinishedWakingUp(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "folded"    # Ljava/lang/Boolean;

    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 64
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 65
    return-void
.end method

.method setDeviceFolded(Z)V
    .locals 2
    .param p1, "folded"    # Z

    .line 76
    invoke-direct {p0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->log()V

    .line 80
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 82
    return-void
.end method
