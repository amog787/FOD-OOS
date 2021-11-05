.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskPersister$piHtCTZMpbHMTXAk2o7OdlK4Xvc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskPersister$piHtCTZMpbHMTXAk2o7OdlK4Xvc;->f$0:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskPersister$piHtCTZMpbHMTXAk2o7OdlK4Xvc;->f$0:Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    invoke-static {v0, p1}, Lcom/android/server/wm/TaskPersister;->lambda$wakeup$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z

    move-result p1

    return p1
.end method
