.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;->f$1:I

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;->f$1:I

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionMultiEvents$0$ActivityMetricsLogger(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method
