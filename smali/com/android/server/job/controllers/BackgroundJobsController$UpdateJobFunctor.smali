.class final Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
.super Ljava/lang/Object;
.source "BackgroundJobsController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BackgroundJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateJobFunctor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final activeState:I

.field mChanged:Z

.field mCheckedCount:I

.field mTotalCount:I

.field final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;I)V
    .locals 0
    .param p2, "newActiveState"    # I

    .line 214
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChanged:Z

    .line 211
    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 212
    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 215
    iput p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->activeState:I

    .line 216
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 220
    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 221
    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 222
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->activeState:I

    invoke-virtual {v0, p1, v2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iput-boolean v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChanged:Z

    .line 225
    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 208
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
