.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$z4tQUSxn6WAFBTLse5CB3j-b8c8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$z4tQUSxn6WAFBTLse5CB3j-b8c8;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$z4tQUSxn6WAFBTLse5CB3j-b8c8;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$z4tQUSxn6WAFBTLse5CB3j-b8c8;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$z4tQUSxn6WAFBTLse5CB3j-b8c8;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->lambda$onTaskVanished$1$TaskOrganizerController$TaskOrganizerCallbacks(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
