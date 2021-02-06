.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Lcom/android/server/wm/Task;ZLandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;->f$1:Lcom/android/server/wm/Task;

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;->f$3:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;->f$1:Lcom/android/server/wm/Task;

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$3B2ajcX1016FWhhrvdadLQoIOlk;->f$3:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->lambda$onTaskAppeared$0$TaskOrganizerController$TaskOrganizerCallbacks(Lcom/android/server/wm/Task;ZLandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
