.class public interface abstract Lcom/android/server/people/data/EventHistory;
.super Ljava/lang/Object;
.source "EventHistory.java"


# virtual methods
.method public abstract getEventIndex(I)Lcom/android/server/people/data/EventIndex;
.end method

.method public abstract getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/people/data/EventIndex;"
        }
    .end annotation
.end method

.method public abstract queryEvents(Ljava/util/Set;JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation
.end method
