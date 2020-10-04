.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskPersister$xdLXwftXa6l84QTg1zpxMnmtQ0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/TaskRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskPersister$xdLXwftXa6l84QTg1zpxMnmtQ0g;->f$0:Lcom/android/server/wm/TaskRecord;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskPersister$xdLXwftXa6l84QTg1zpxMnmtQ0g;->f$0:Lcom/android/server/wm/TaskRecord;

    check-cast p1, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    invoke-static {v0, p1}, Lcom/android/server/wm/TaskPersister;->lambda$wakeup$1(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z

    move-result p1

    return p1
.end method
