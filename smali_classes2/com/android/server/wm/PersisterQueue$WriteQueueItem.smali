.class interface abstract Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
.super Ljava/lang/Object;
.source "PersisterQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PersisterQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "WriteQueueItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 257
    .local p0, "this":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<TT;>;"
    .local p1, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract process()V
.end method

.method public updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 254
    .local p0, "this":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<TT;>;"
    .local p1, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    return-void
.end method
