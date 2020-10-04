.class public final synthetic Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:Landroid/app/IActivityManager;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(JLandroid/app/IActivityManager;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;->f$0:J

    iput-object p3, p0, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;->f$1:Landroid/app/IActivityManager;

    iput-object p4, p0, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;->f$2:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-wide v0, p0, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;->f$0:J

    iget-object v2, p0, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;->f$1:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;->f$2:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/job/-$$Lambda$JobStore$aR-nUP_cO7r3CFj_LAjeNjVBP-4;->f$3:Ljava/util/ArrayList;

    move-object v5, p1

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    invoke-static/range {v0 .. v5}, Lcom/android/server/job/JobStore;->lambda$getRtcCorrectedJobsLocked$0(JLandroid/app/IActivityManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
