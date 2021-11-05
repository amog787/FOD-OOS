.class Lcom/android/server/people/data/EventHistoryImpl;
.super Ljava/lang/Object;
.source "EventHistoryImpl.java"

# interfaces
.implements Lcom/android/server/people/data/EventHistory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;,
        Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;,
        Lcom/android/server/people/data/EventHistoryImpl$Injector;
    }
.end annotation


# static fields
.field private static final EVENTS_DIR:Ljava/lang/String; = "events"

.field private static final INDEXES_DIR:Ljava/lang/String; = "indexes"

.field private static final MAX_EVENTS_AGE:J = 0xdbba00L

.field private static final PRUNE_OLD_EVENTS_DELAY:J = 0xdbba0L


# instance fields
.field private final mEventIndexArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/EventIndex;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

.field private final mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

.field private final mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

.field private mLastPruneTime:J

.field private final mRecentEvents:Lcom/android/server/people/data/EventList;

.field private final mRootDir:Ljava/io/File;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4
    .param p1, "injector"    # Lcom/android/server/people/data/EventHistoryImpl$Injector;
    .param p2, "rootDir"    # Ljava/io/File;
    .param p3, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Lcom/android/server/people/data/EventList;

    invoke-direct {v0}, Lcom/android/server/people/data/EventList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    .line 78
    iput-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    .line 79
    iput-object p3, p0, Lcom/android/server/people/data/EventHistoryImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 80
    invoke-virtual {p1}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J

    .line 82
    iput-object p2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    .line 83
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    const-string v2, "events"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .local v0, "eventsDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0, v2}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    .line 86
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    const-string v3, "indexes"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v1, "indexesDir":Ljava/io/File;
    new-instance v2, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    invoke-direct {v2, v1, p3}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "rootDir"    # Ljava/io/File;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 72
    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/EventHistoryImpl$Injector;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 73
    return-void
.end method

.method private declared-synchronized addEventInMemory(Lcom/android/server/people/data/Event;)V
    .locals 3
    .param p1, "event"    # Lcom/android/server/people/data/Event;

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventIndex;

    .line 208
    .local v0, "eventIndex":Lcom/android/server/people/data/EventIndex;
    if-nez v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->createEventIndex()Lcom/android/server/people/data/EventIndex;

    move-result-object v1

    move-object v0, v1

    .line 210
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    .end local p0    # "this":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventIndex;->addEvent(J)V

    .line 213
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v1, p1}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 206
    .end local v0    # "eventIndex":Lcom/android/server/people/data/EventIndex;
    .end local p1    # "event":Lcom/android/server/people/data/Event;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static eventHistoriesImplFromDisk(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;
    .locals 8
    .param p0, "injector"    # Lcom/android/server/people/data/EventHistoryImpl$Injector;
    .param p1, "categoryDir"    # Ljava/io/File;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/people/data/EventHistoryImpl$Injector;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/EventHistoryImpl;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 103
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    sget-object v1, Lcom/android/server/people/data/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 104
    .local v1, "keyDirs":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 105
    return-object v0

    .line 107
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 108
    .local v4, "keyDir":Ljava/io/File;
    sget-object v5, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$rFfD-2ROorI4gYAR7KD7YcJ5fUg;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$rFfD-2ROorI4gYAR7KD7YcJ5fUg;

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 110
    .local v5, "dirContents":[Ljava/io/File;
    if-eqz v5, :cond_1

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 111
    new-instance v6, Lcom/android/server/people/data/EventHistoryImpl;

    invoke-direct {v6, p0, v4, p2}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 113
    .local v6, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-virtual {v6}, Lcom/android/server/people/data/EventHistoryImpl;->loadFromDisk()V

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local v4    # "keyDir":Ljava/io/File;
    .end local v5    # "dirContents":[Ljava/io/File;
    .end local v6    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_2
    return-object v0
.end method

.method static eventHistoriesImplFromDisk(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;
    .locals 1
    .param p0, "categoryDir"    # Ljava/io/File;
    .param p1, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/EventHistoryImpl;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/EventHistoryImpl$Injector;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->eventHistoriesImplFromDisk(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$eventHistoriesImplFromDisk$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 109
    const-string v0, "events"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "indexes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method declared-synchronized addEvent(Lcom/android/server/people/data/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/android/server/people/data/Event;

    monitor-enter p0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/people/data/EventHistoryImpl;->pruneOldEvents()V

    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEventInMemory(Lcom/android/server/people/data/Event;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->scheduleEventsSave(Lcom/android/server/people/data/EventList;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->scheduleIndexesSave(Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 182
    .end local p0    # "this":Lcom/android/server/people/data/EventHistoryImpl;
    .end local p1    # "event":Lcom/android/server/people/data/Event;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventIndex(I)Lcom/android/server/people/data/EventIndex;
    .locals 2
    .param p1, "eventType"    # I

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventIndex;

    .line 159
    .local v0, "eventIndex":Lcom/android/server/people/data/EventIndex;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v1, v0}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex;)V

    goto :goto_0

    .end local p0    # "this":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_0
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->createEventIndex()Lcom/android/server/people/data/EventIndex;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 157
    .end local v0    # "eventIndex":Lcom/android/server/people/data/EventIndex;
    .end local p1    # "eventType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
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

    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->createEventIndex()Lcom/android/server/people/data/EventIndex;

    move-result-object v0

    .line 166
    .local v0, "combined":Lcom/android/server/people/data/EventIndex;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 167
    .local v2, "eventType":I
    iget-object v3, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/EventIndex;

    .line 168
    .local v3, "eventIndex":Lcom/android/server/people/data/EventIndex;
    if-eqz v3, :cond_0

    .line 169
    invoke-static {v0, v3}, Lcom/android/server/people/data/EventIndex;->combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 171
    .end local v2    # "eventType":I
    .end local v3    # "eventIndex":Lcom/android/server/people/data/EventIndex;
    .end local p0    # "this":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    monitor-exit p0

    return-object v0

    .line 164
    .end local v0    # "combined":Lcom/android/server/people/data/EventIndex;
    .end local p1    # "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$loadFromDisk$1$EventHistoryImpl()V
    .locals 6

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->loadRecentEventsFromDisk()Lcom/android/server/people/data/EventList;

    move-result-object v0

    .line 130
    .local v0, "diskEvents":Lcom/android/server/people/data/EventList;
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xdbba00

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventList;->removeOldEvents(J)V

    .line 132
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventList;->getAllEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/EventList;->addAll(Ljava/util/List;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    .line 136
    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->loadIndexesFromDisk()Landroid/util/SparseArray;

    move-result-object v1

    .line 137
    .local v1, "diskIndexes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/people/data/EventIndex;>;"
    if-eqz v1, :cond_1

    .line 138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/data/EventIndex;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "diskEvents":Lcom/android/server/people/data/EventList;
    .end local v1    # "diskIndexes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/people/data/EventIndex;>;"
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized loadFromDisk()V
    .locals 2

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$YDpe35eL4N0P69OowfcOM7MovRs;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$YDpe35eL4N0P69OowfcOM7MovRs;-><init>(Lcom/android/server/people/data/EventHistoryImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 126
    .end local p0    # "this":Lcom/android/server/people/data/EventHistoryImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 191
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventList;->clear()V

    .line 192
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->deleteRecentEventsFile()V

    .line 193
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->deleteIndexesFile()V

    .line 194
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 189
    .end local p0    # "this":Lcom/android/server/people/data/EventHistoryImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pruneOldEvents()V
    .locals 6

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->currentTimeMillis()J

    move-result-wide v0

    .line 200
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    const-wide/32 v3, 0xdbba00

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/people/data/EventList;->removeOldEvents(J)V

    .line 202
    iput-wide v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local p0    # "this":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    .end local v0    # "currentTime":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryEvents(Ljava/util/Set;JJ)Ljava/util/List;
    .locals 6
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

    .local p1, "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/people/data/EventList;->queryEvents(Ljava/util/Set;JJ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 179
    .end local p0    # "this":Lcom/android/server/people/data/EventHistoryImpl;
    .end local p1    # "eventTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p2    # "startTime":J
    .end local p4    # "endTime":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized saveToDisk()V
    .locals 2

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->saveEventsImmediately(Lcom/android/server/people/data/EventList;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->saveIndexesImmediately(Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 150
    .end local p0    # "this":Lcom/android/server/people/data/EventHistoryImpl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
