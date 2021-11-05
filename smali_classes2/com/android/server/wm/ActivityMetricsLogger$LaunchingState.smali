.class final Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LaunchingState"
.end annotation


# instance fields
.field private mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

.field private mCurrentTransitionStartTimeNs:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 178
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mCurrentTransitionStartTimeNs:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .param p1, "x1"    # J

    .line 178
    iput-wide p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mCurrentTransitionStartTimeNs:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 178
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    return-object p1
.end method


# virtual methods
.method allDrawn()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->allDrawn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
