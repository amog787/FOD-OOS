.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;->f$3:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionReportedDrawn$3$ActivityMetricsLogger(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    return-void
.end method
