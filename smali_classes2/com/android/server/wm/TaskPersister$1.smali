.class Lcom/android/server/wm/TaskPersister$1;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/wm/Task;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskPersister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/TaskPersister;

    .line 382
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$1;->this$0:Lcom/android/server/wm/TaskPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 5
    .param p1, "lhs"    # Lcom/android/server/wm/Task;
    .param p2, "rhs"    # Lcom/android/server/wm/Task;

    .line 385
    iget-wide v0, p2, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    iget-wide v2, p1, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    sub-long/2addr v0, v2

    .line 386
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 387
    const/4 v2, -0x1

    return v2

    .line 388
    :cond_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 389
    const/4 v2, 0x1

    return v2

    .line 391
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 382
    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPersister$1;->compare(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I

    move-result p1

    return p1
.end method
