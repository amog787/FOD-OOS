.class Lcom/android/server/wm/Task$TaskActivitiesReport;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskActivitiesReport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field base:Lcom/android/server/wm/ActivityRecord;

.field numActivities:I

.field numRunning:I

.field top:Lcom/android/server/wm/ActivityRecord;

.field topFullscreen:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->topFullscreen:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 4045
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    .line 4046
    return-void

    .line 4049
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    .line 4052
    sget-boolean v0, Lcom/android/server/wm/OpAppLockerInjector;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->topFullscreen:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_1

    .line 4053
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4054
    const-string v1, "com.oneplus.applocker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4055
    iput-object p1, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->topFullscreen:Lcom/android/server/wm/ActivityRecord;

    .line 4060
    :cond_1
    iget v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    .line 4062
    iget-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4063
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4066
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 4068
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4070
    iget v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 4072
    :cond_4
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 4024
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->accept(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method reset()V
    .locals 1

    .line 4035
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->numRunning:I

    .line 4036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 4039
    iput-object v0, p0, Lcom/android/server/wm/Task$TaskActivitiesReport;->topFullscreen:Lcom/android/server/wm/ActivityRecord;

    .line 4041
    return-void
.end method
