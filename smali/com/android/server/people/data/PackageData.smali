.class public Lcom/android/server/people/data/PackageData;
.super Ljava/lang/Object;
.source "PackageData.java"


# instance fields
.field private final mConversationStore:Lcom/android/server/people/data/ConversationStore;

.field private final mEventStore:Lcom/android/server/people/data/EventStore;

.field private final mIsDefaultDialerPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDataDir:Ljava/io/File;

.field private final mPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p5, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p6, "perUserPeopleDataDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 64
    .local p3, "isDefaultDialerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    .local p4, "isDefaultSmsAppPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/android/server/people/data/PackageData;->mUserId:I

    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 71
    new-instance v0, Lcom/android/server/people/data/ConversationStore;

    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    invoke-direct {v0, v1, p5}, Lcom/android/server/people/data/ConversationStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 72
    new-instance v0, Lcom/android/server/people/data/EventStore;

    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    invoke-direct {v0, v1, p5}, Lcom/android/server/people/data/EventStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 73
    iput-object p3, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    .line 74
    iput-object p4, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    .line 75
    return-void
.end method

.method private loadFromDisk()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->loadConversationsFromDisk()V

    .line 105
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->loadFromDisk()V

    .line 106
    return-void
.end method

.method static packagesDataFromDisk(ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)Ljava/util/Map;
    .locals 14
    .param p0, "userId"    # I
    .param p3, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "perUserPeopleDataDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/PackageData;",
            ">;"
        }
    .end annotation

    .line 88
    .local p1, "isDefaultDialerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    .local p2, "isDefaultSmsAppPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 89
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/people/data/PackageData;>;"
    sget-object v1, Lcom/android/server/people/data/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;

    move-object/from16 v9, p4

    invoke-virtual {v9, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 90
    .local v1, "packageDirs":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 91
    return-object v0

    .line 93
    :cond_0
    array-length v10, v1

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v12, v1, v11

    .line 94
    .local v12, "packageDir":Ljava/io/File;
    new-instance v13, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v13

    move v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    .line 97
    .local v2, "packageData":Lcom/android/server/people/data/PackageData;
    invoke-direct {v2}, Lcom/android/server/people/data/PackageData;->loadFromDisk()V

    .line 98
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v2    # "packageData":Lcom/android/server/people/data/PackageData;
    .end local v12    # "packageDir":Ljava/io/File;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return-object v0
.end method


# virtual methods
.method deleteDataForConversation(Ljava/lang/String;)V
    .locals 4
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->deleteConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    .line 219
    .local v0, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v2, 0x1

    .line 225
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v1, v2, v3}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 227
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    iget-object v2, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    .line 236
    :cond_3
    return-void
.end method

.method public forAllConversations(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/ConversationInfo;>;"
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 126
    return-void
.end method

.method public getClassLevelEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v0

    .line 192
    .local v0, "eventHistory":Lcom/android/server/people/data/EventHistory;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {v1}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    return-object v0
.end method

.method getConversationStore()Lcom/android/server/people/data/ConversationStore;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object v0
.end method

.method public getEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .locals 7
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 144
    new-instance v0, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {v0}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    .line 146
    .local v0, "result":Lcom/android/server/people/data/AggregateEventHistoryImpl;
    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v1, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    .line 147
    .local v1, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-nez v1, :cond_0

    .line 148
    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v2

    .line 153
    .local v2, "shortcutEventHistory":Lcom/android/server/people/data/EventHistory;
    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v0, v2}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 157
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v3

    .line 158
    .local v3, "locusId":Landroid/content/LocusId;
    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v4

    const/4 v5, 0x1

    .line 160
    invoke-virtual {v3}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v6

    .line 159
    invoke-virtual {v4, v5, v6}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v4

    .line 161
    .local v4, "locusEventHistory":Lcom/android/server/people/data/EventHistory;
    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {v0, v4}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 166
    .end local v4    # "locusEventHistory":Lcom/android/server/people/data/EventHistory;
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "phoneNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    return-object v0

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v5

    .line 173
    .local v5, "callEventHistory":Lcom/android/server/people/data/EventHistory;
    if-eqz v5, :cond_4

    .line 174
    invoke-virtual {v0, v5}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 177
    .end local v5    # "callEventHistory":Lcom/android/server/people/data/EventHistory;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v5

    .line 180
    .local v5, "smsEventHistory":Lcom/android/server/people/data/EventHistory;
    if-eqz v5, :cond_5

    .line 181
    invoke-virtual {v0, v5}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    .line 184
    .end local v5    # "smsEventHistory":Lcom/android/server/people/data/EventHistory;
    :cond_5
    return-object v0
.end method

.method getEventStore()Lcom/android/server/people/data/EventStore;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/android/server/people/data/PackageData;->mUserId:I

    return v0
.end method

.method public isDefaultDialer()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDefaultSmsApp()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$pruneOrphanEvents$0$PackageData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$pruneOrphanEvents$1$PackageData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, p1}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$pruneOrphanEvents$2$PackageData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$pruneOrphanEvents$3$PackageData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onDestroy()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->onDestroy()V

    .line 257
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 258
    return-void
.end method

.method pruneOrphanEvents()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$PackageData$ZMIP6vp07hH0QC6HejoO3J3Cu2U;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/-$$Lambda$PackageData$ZMIP6vp07hH0QC6HejoO3J3Cu2U;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$PackageData$J3LynTIgc_2KnnovNl7oOwEM_E4;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/-$$Lambda$PackageData$J3LynTIgc_2KnnovNl7oOwEM_E4;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v1, 0x2

    new-instance v2, Lcom/android/server/people/data/-$$Lambda$PackageData$dOe5E3K5VL4MNZ7U4WvGn0mSu3I;

    invoke-direct {v2, p0}, Lcom/android/server/people/data/-$$Lambda$PackageData$dOe5E3K5VL4MNZ7U4WvGn0mSu3I;-><init>(Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v1, 0x3

    new-instance v2, Lcom/android/server/people/data/-$$Lambda$PackageData$TsHvZ9e7TBMeBQJKI3dIyx1JrLo;

    invoke-direct {v2, p0}, Lcom/android/server/people/data/-$$Lambda$PackageData$TsHvZ9e7TBMeBQJKI3dIyx1JrLo;-><init>(Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    .line 252
    :cond_1
    return-void
.end method

.method saveToDisk()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->saveConversationsToDisk()V

    .line 111
    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->saveToDisk()V

    .line 112
    return-void
.end method
