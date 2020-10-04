.class Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidConstraintUpdater"
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
.field private final mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;

.field public wasJobChanged:Z


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 1

    .line 1319
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>(Lcom/android/server/job/controllers/QuotaController$1;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/job/controllers/QuotaController;
    .param p2, "x1"    # Lcom/android/server/job/controllers/QuotaController$1;

    .line 1319
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1325
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/android/server/job/controllers/QuotaController;->access$700(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    .line 1326
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 1327
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 1328
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v2

    .line 1329
    .local v2, "realStandbyBucket":I
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1330
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$800(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;

    .line 1331
    .local v3, "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->isWaiting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1332
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$900(Lcom/android/server/job/controllers/QuotaController;)Landroid/app/AlarmManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1334
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;->setTriggerTime(J)V

    .line 1336
    .end local v3    # "alarmListener":Lcom/android/server/job/controllers/QuotaController$QcAlarmListener;
    :cond_0
    goto :goto_0

    .line 1337
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1339
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1319
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method postProcess()V
    .locals 6

    .line 1342
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1343
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(I)I

    move-result v1

    .line 1344
    .local v1, "userId":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v1}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numPackagesForUser(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1345
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->keyAt(II)Ljava/lang/String;

    move-result-object v3

    .line 1346
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1347
    .local v4, "standbyBucket":I
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 1344
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "standbyBucket":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1342
    .end local v1    # "userId":I
    .end local v2    # "p":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1350
    .end local v0    # "u":I
    :cond_1
    return-void
.end method

.method reset()V
    .locals 1

    .line 1353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->wasJobChanged:Z

    .line 1354
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->clear()V

    .line 1355
    return-void
.end method
