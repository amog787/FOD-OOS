.class Lcom/android/server/people/data/AggregateEventHistoryImpl;
.super Ljava/lang/Object;
.source "AggregateEventHistoryImpl.java"

# interfaces
.implements Lcom/android/server/people/data/EventHistory;


# instance fields
.field private final mEventHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/people/data/EventHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    return-void
.end method

.method private combineEventLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation

    .line 81
    .local p1, "lhs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/Event;>;"
    .local p2, "rhs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/Event;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .line 83
    .local v2, "j":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/Event;

    invoke-virtual {v3}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/data/Event;

    invoke-virtual {v5}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 85
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/Event;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 87
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/Event;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    .line 90
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 92
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 93
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method addEventHistory(Lcom/android/server/people/data/EventHistory;)V
    .locals 1
    .param p1, "eventHistory"    # Lcom/android/server/people/data/EventHistory;

    .line 73
    iget-object v0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getEventIndex(I)Lcom/android/server/people/data/EventIndex;
    .locals 4
    .param p1, "eventType"    # I

    .line 33
    iget-object v0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/EventHistory;

    .line 34
    .local v1, "eventHistory":Lcom/android/server/people/data/EventHistory;
    invoke-interface {v1, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    move-result-object v2

    .line 35
    .local v2, "eventIndex":Lcom/android/server/people/data/EventIndex;
    invoke-virtual {v2}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    return-object v2

    .line 38
    .end local v1    # "eventHistory":Lcom/android/server/people/data/EventHistory;
    .end local v2    # "eventIndex":Lcom/android/server/people/data/EventIndex;
    :cond_0
    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    return-object v0
.end method

.method public getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/people/data/EventIndex;"
        }
    .end annotation

    .line 45
    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 46
    .local v0, "merged":Lcom/android/server/people/data/EventIndex;
    iget-object v1, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventHistory;

    .line 47
    .local v2, "eventHistory":Lcom/android/server/people/data/EventHistory;
    invoke-interface {v2, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v3

    .line 48
    .local v3, "eventIndex":Lcom/android/server/people/data/EventIndex;
    if-nez v0, :cond_0

    .line 49
    move-object v0, v3

    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 51
    invoke-static {v0, v3}, Lcom/android/server/people/data/EventIndex;->combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;

    move-result-object v0

    .line 53
    .end local v2    # "eventHistory":Lcom/android/server/people/data/EventHistory;
    .end local v3    # "eventIndex":Lcom/android/server/people/data/EventIndex;
    :cond_1
    :goto_1
    goto :goto_0

    .line 54
    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    :goto_2
    return-object v1
.end method

.method public queryEvents(Ljava/util/Set;JJ)Ljava/util/List;
    .locals 10
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
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

    .line 60
    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/Event;>;"
    iget-object v1, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventHistory;

    .line 62
    .local v2, "eventHistory":Lcom/android/server/people/data/EventHistory;
    invoke-interface {v2, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v9

    .line 63
    .local v9, "eventIndex":Lcom/android/server/people/data/EventIndex;
    invoke-virtual {v9}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    goto :goto_0

    .line 66
    :cond_0
    move-object v3, v2

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/server/people/data/EventHistory;->queryEvents(Ljava/util/Set;JJ)Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, "queryResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/Event;>;"
    invoke-direct {p0, v0, v3}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->combineEventLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 68
    .end local v2    # "eventHistory":Lcom/android/server/people/data/EventHistory;
    .end local v3    # "queryResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/Event;>;"
    .end local v9    # "eventIndex":Lcom/android/server/people/data/EventIndex;
    goto :goto_0

    .line 69
    :cond_1
    return-object v0
.end method
