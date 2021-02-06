.class Lcom/android/server/people/data/EventStore;
.super Ljava/lang/Object;
.source "EventStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/EventStore$EventCategory;
    }
.end annotation


# static fields
.field static final CATEGORY_CALL:I = 0x2

.field static final CATEGORY_CLASS_BASED:I = 0x4

.field static final CATEGORY_LOCUS_ID_BASED:I = 0x1

.field static final CATEGORY_SHORTCUT_BASED:I = 0x0

.field static final CATEGORY_SMS:I = 0x3


# instance fields
.field private final mEventHistoryMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/EventHistoryImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEventsCategoryDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 9
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x2

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v5, 0x3

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v6, 0x4

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "event"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v0, "eventDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "shortcut"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "locus"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string v3, "call"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "sms"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    new-instance v2, Ljava/io/File;

    const-string v3, "class"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    iput-object p2, p0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 87
    return-void
.end method


# virtual methods
.method declared-synchronized deleteEventHistories(I)V
    .locals 2
    .param p1, "category"    # I

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/EventHistoryImpl;

    .line 159
    .local v1, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V

    .line 160
    .end local v1    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_0

    .line 161
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 157
    .end local p1    # "category":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deleteEventHistory(ILjava/lang/String;)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventHistoryImpl;

    .line 151
    .local v0, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    .end local v0    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    .end local p1    # "category":I
    .end local p2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .locals 1
    .param p1, "category"    # I
    .param p2, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    .end local p1    # "category":I
    .end local p2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;
    .locals 2
    .param p1, "category"    # I
    .param p2, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$EventStore$Wdeg-tsj4laxwiSP6mHBYZP59i0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/people/data/-$$Lambda$EventStore$Wdeg-tsj4laxwiSP6mHBYZP59i0;-><init>(Lcom/android/server/people/data/EventStore;ILjava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventHistoryImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 137
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    .end local p1    # "category":I
    .end local p2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$getOrCreateEventHistory$0$EventStore(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;
    .locals 4
    .param p1, "category"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "k"    # Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    .line 139
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 138
    return-object v0
.end method

.method declared-synchronized loadFromDisk()V
    .locals 4

    monitor-enter p0

    .line 95
    const/4 v0, 0x0

    .local v0, "category":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/server/people/data/EventStore;->mEventsCategoryDirs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 98
    .local v1, "categoryDir":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    invoke-static {v1, v2}, Lcom/android/server/people/data/EventHistoryImpl;->eventHistoriesImplFromDisk(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;

    move-result-object v2

    .line 101
    .local v2, "existingEventHistoriesImpl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    iget-object v3, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v1    # "categoryDir":Ljava/io/File;
    .end local v2    # "existingEventHistoriesImpl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "category":I
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onDestroy()V
    .locals 4

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 199
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/EventHistoryImpl;

    .line 200
    .local v3, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-virtual {v3}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_1

    .line 202
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_0
    goto :goto_0

    .line 203
    :cond_1
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pruneOldEvents()V
    .locals 4

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 167
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/EventHistoryImpl;

    .line 168
    .local v3, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-virtual {v3}, Lcom/android/server/people/data/EventHistoryImpl;->pruneOldEvents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_1

    .line 170
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_0
    goto :goto_0

    .line 171
    :cond_1
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pruneOrphanEventHistories(ILjava/util/function/Predicate;)V
    .locals 6
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p2, "keyChecker":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 182
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "keysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v3    # "key":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_0
    goto :goto_0

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 189
    .local v2, "eventHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/data/EventHistoryImpl;

    .line 191
    .local v5, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    if-eqz v5, :cond_2

    .line 192
    invoke-virtual {v5}, Lcom/android/server/people/data/EventHistoryImpl;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_2
    goto :goto_1

    .line 195
    :cond_3
    monitor-exit p0

    return-void

    .line 180
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "keysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "eventHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    .end local p1    # "category":I
    .end local p2    # "keyChecker":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized saveToDisk()V
    .locals 4

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 110
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/EventHistoryImpl;

    .line 111
    .local v3, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-virtual {v3}, Lcom/android/server/people/data/EventHistoryImpl;->saveToDisk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_1

    .line 113
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/EventHistoryImpl;>;"
    .end local p0    # "this":Lcom/android/server/people/data/EventStore;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
