.class Lcom/android/server/people/data/DataManager$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationListener"
.end annotation


# instance fields
.field private final mActiveNotifCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 0
    .param p2, "userId"    # I

    .line 782
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 779
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    .line 783
    iput p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    .line 784
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/people/data/DataManager$1;

    .line 774
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;I)V

    return-void
.end method


# virtual methods
.method declared-synchronized cleanupCachedShortcuts()V
    .locals 13

    monitor-enter p0

    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 887
    .local v1, "conversationKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 888
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v10, v3

    .line 889
    .local v10, "shortcutId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    iget v4, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v3

    move-object v11, v3

    .line 891
    .local v11, "packageData":Lcom/android/server/people/data/PackageData;
    if-eqz v11, :cond_0

    invoke-virtual {v11, v10}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    goto :goto_1

    .end local p0    # "this":Lcom/android/server/people/data/DataManager$NotificationListener;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    move-object v12, v3

    .line 892
    .local v12, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-eqz v12, :cond_1

    .line 893
    invoke-virtual {v12}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 894
    invoke-virtual {v12}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 895
    iget-object v3, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v3}, Lcom/android/server/people/data/DataManager;->access$1700(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v3

    iget v4, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    iget-object v5, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    .line 896
    invoke-static {v5}, Lcom/android/server/people/data/DataManager;->access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 897
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget v8, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    const/16 v9, 0x4000

    .line 895
    move-object v6, v2

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    .end local v1    # "conversationKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v10    # "shortcutId":Ljava/lang/String;
    .end local v11    # "packageData":Lcom/android/server/people/data/PackageData;
    .end local v12    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    :cond_1
    goto :goto_0

    .line 901
    :cond_2
    monitor-exit p0

    return-void

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasActiveNotifications(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;

    monitor-enter p0

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 904
    .end local p0    # "this":Lcom/android/server/people/data/DataManager$NotificationListener;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "shortcutId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$onNotificationPosted$0$DataManager$NotificationListener(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 793
    monitor-enter p0

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    .line 795
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/people/data/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;

    .line 794
    invoke-interface {v0, v1, v2, v3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 796
    monitor-exit p0

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$onNotificationRemoved$1$DataManager$NotificationListener(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 10
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 814
    nop

    .line 815
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 816
    .local v0, "conversationKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 817
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 818
    .local v1, "count":I
    if-gtz v1, :cond_0

    .line 819
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    invoke-virtual {p3}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    invoke-virtual {p3}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 825
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v2}, Lcom/android/server/people/data/DataManager;->access$1700(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v3

    iget v4, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    iget-object v2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    .line 826
    invoke-static {v2}, Lcom/android/server/people/data/DataManager;->access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 827
    invoke-virtual {p3}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget v8, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    const/16 v9, 0x4000

    .line 825
    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    goto :goto_0

    .line 831
    :cond_0
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .end local v1    # "count":I
    :cond_1
    :goto_0
    monitor-exit p0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "modificationType"    # I

    .line 848
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_0

    .line 849
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    .line 852
    .local v0, "packageData":Lcom/android/server/people/data/PackageData;
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "shortcutId":Ljava/lang/String;
    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto :goto_2

    .line 856
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v2

    .line 857
    .local v2, "conversationStore":Lcom/android/server/people/data/ConversationStore;
    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    .line 858
    .local v3, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-nez v3, :cond_2

    .line 859
    return-void

    .line 861
    :cond_2
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v4, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 862
    .local v4, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p4, v6, :cond_4

    if-eq p4, v5, :cond_4

    const/4 v5, 0x3

    if-eq p4, v5, :cond_3

    goto :goto_1

    .line 875
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 876
    invoke-virtual {v4, v7}, Lcom/android/server/people/data/ConversationInfo$Builder;->setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 877
    invoke-virtual {v4, v7}, Lcom/android/server/people/data/ConversationInfo$Builder;->setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 878
    invoke-virtual {v4, v7}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 879
    invoke-virtual {v4, v7}, Lcom/android/server/people/data/ConversationInfo$Builder;->setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_1

    .line 865
    :cond_4
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 866
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 867
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 868
    nop

    .line 869
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v8

    if-gt v8, v5, :cond_5

    goto :goto_0

    :cond_5
    move v6, v7

    .line 868
    :goto_0
    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 870
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 871
    nop

    .line 882
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 883
    return-void

    .line 854
    .end local v2    # "conversationStore":Lcom/android/server/people/data/ConversationStore;
    .end local v3    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .end local v4    # "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    :cond_6
    :goto_2
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 788
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_0

    .line 789
    return-void

    .line 791
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "shortcutId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v2, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$xCkMi638l4piHGkJ8fRSKeCSmQ4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$xCkMi638l4piHGkJ8fRSKeCSmQ4;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->access$1800(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    .line 799
    .local v1, "packageData":Lcom/android/server/people/data/PackageData;
    if-eqz v1, :cond_1

    .line 800
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v2

    .line 802
    .local v2, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    new-instance v3, Lcom/android/server/people/data/Event;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 804
    .end local v2    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_1
    return-void
.end method

.method public declared-synchronized onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 7
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "reason"    # I

    monitor-enter p0

    .line 809
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 810
    monitor-exit p0

    return-void

    .line 812
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "shortcutId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v2, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/people/data/-$$Lambda$DataManager$NotificationListener$ooyQ8do-cYyX4B7R7wsqmT53_NU;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->access$1800(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    .line 836
    .local v1, "packageData":Lcom/android/server/people/data/PackageData;
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 839
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v2

    .line 841
    .local v2, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 842
    .local v3, "currentTime":J
    new-instance v5, Lcom/android/server/people/data/Event;

    const/4 v6, 0x3

    invoke-direct {v5, v3, v4, v6}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v2, v5}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    monitor-exit p0

    return-void

    .line 837
    .end local v2    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    .end local v3    # "currentTime":J
    .end local p0    # "this":Lcom/android/server/people/data/DataManager$NotificationListener;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 808
    .end local v0    # "shortcutId":Ljava/lang/String;
    .end local v1    # "packageData":Lcom/android/server/people/data/PackageData;
    .end local p1    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local p2    # "rankingMap":Landroid/service/notification/NotificationListenerService$RankingMap;
    .end local p3    # "reason":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
