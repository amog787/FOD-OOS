.class Lcom/android/server/job/JobSchedulerService$6;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/job/controllers/JobStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .locals 6
    .param p1, "o1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "o2"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3174
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 3175
    .local v0, "uid1":I
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    .line 3176
    .local v1, "uid2":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    .line 3177
    .local v2, "id1":I
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    .line 3178
    .local v3, "id2":I
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v0, v1, :cond_1

    .line 3179
    if-ge v0, v1, :cond_0

    move v4, v5

    :cond_0
    return v4

    .line 3181
    :cond_1
    if-ge v2, v3, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    if-le v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3171
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService$6;->compare(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    return p1
.end method
