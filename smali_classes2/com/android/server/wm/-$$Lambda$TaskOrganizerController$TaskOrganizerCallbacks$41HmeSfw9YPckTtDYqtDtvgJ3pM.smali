.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$41HmeSfw9YPckTtDYqtDtvgJ3pM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field public final synthetic f$1:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$41HmeSfw9YPckTtDYqtDtvgJ3pM;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$41HmeSfw9YPckTtDYqtDtvgJ3pM;->f$1:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$41HmeSfw9YPckTtDYqtDtvgJ3pM;->f$0:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$TaskOrganizerCallbacks$41HmeSfw9YPckTtDYqtDtvgJ3pM;->f$1:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->lambda$onBackPressedOnTaskRoot$3$TaskOrganizerController$TaskOrganizerCallbacks(Lcom/android/server/wm/Task;)V

    return-void
.end method
