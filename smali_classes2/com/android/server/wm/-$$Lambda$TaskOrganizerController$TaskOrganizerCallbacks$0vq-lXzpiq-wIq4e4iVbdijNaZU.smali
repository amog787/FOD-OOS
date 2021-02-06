.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU;->f$1:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU;->f$2:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU;->f$1:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$0vq-lXzpiq-wIq4e4iVbdijNaZU;->f$2:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->lambda$onTaskInfoChanged$2$TaskOrganizerController$TaskOrganizerCallbacks(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
