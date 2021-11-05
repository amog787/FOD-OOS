.class public Lcom/android/server/notification/GroupHelper;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/GroupHelper$Callback;
    }
.end annotation


# static fields
.field protected static final AUTOGROUP_KEY:Ljava/lang/String; = "ranker_group"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GroupHelper"


# instance fields
.field private final mAutoGroupAtCount:I

.field private final mCallback:Lcom/android/server/notification/GroupHelper$Callback;

.field final mOngoingGroupCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mUngroupedNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "GroupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/server/notification/GroupHelper$Callback;)V
    .locals 1
    .param p1, "autoGroupAtCount"    # I
    .param p2, "callback"    # Lcom/android/server/notification/GroupHelper$Callback;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mOngoingGroupCount:Landroid/util/ArrayMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 54
    iput p1, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    .line 55
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 56
    return-void
.end method

.method private addToOngoingGroupCount(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "add"    # Z

    .line 69
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "group":Ljava/lang/String;
    if-nez v0, :cond_2

    return-void

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 74
    .local v1, "userId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/notification/GroupHelper;->generatePackageGroupKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mOngoingGroupCount:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 76
    .local v3, "notifications":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mOngoingGroupCount:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v0}, Lcom/android/server/notification/GroupHelper;->generatePackageGroupKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "combinedKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v5, 0x1

    .line 85
    .local v5, "needsOngoingFlag":Z
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lcom/android/server/notification/GroupHelper$Callback;->updateAutogroupSummary(Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method private adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "triggeringKey"    # Ljava/lang/String;
    .param p4, "summaryNeeded"    # Z

    .line 191
    if-eqz p4, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;)V

    .line 196
    :goto_0
    return-void
.end method

.method private adjustNotificationBundling(Ljava/util/List;Z)V
    .locals 4
    .param p2, "group"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 199
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    .local v1, "key":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending grouping adjustment for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " group? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GroupHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    if-eqz p2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v2, v1}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v2, v1}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroup(Ljava/lang/String;)V

    .line 206
    .end local v1    # "key":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 207
    :cond_2
    return-void
.end method

.method private generatePackageGroupKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "notificationGone"    # Z
    .param p3, "userId"    # I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "notificationsToUnAutogroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 157
    .local v1, "removeSummary":Z
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 159
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 160
    .local v3, "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    nop

    .line 164
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashSet;

    .line 165
    .local v4, "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    if-nez p2, :cond_2

    .line 171
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 177
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v1, 0x1

    .line 180
    .end local v3    # "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    .end local v4    # "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 182
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p3, v3, v4, v2}, Lcom/android/server/notification/GroupHelper;->adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 184
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 185
    invoke-direct {p0, v0, v2}, Lcom/android/server/notification/GroupHelper;->adjustNotificationBundling(Ljava/util/List;Z)V

    .line 187
    :cond_5
    return-void

    .line 166
    .restart local v3    # "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    .restart local v4    # "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_6
    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    .line 161
    .end local v4    # "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_7
    :goto_1
    monitor-exit v2

    return-void

    .line 180
    .end local v3    # "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method protected getOngoingGroupCount(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->generatePackageGroupKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mOngoingGroupCount:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    return v1
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "autogroupSummaryExists"    # Z

    .line 100
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POSTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "notificationsToGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/GroupHelper;->addToOngoingGroupCount(Landroid/service/notification/StatusBarNotification;Z)V

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    .line 107
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 109
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 110
    .local v4, "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    if-nez v4, :cond_2

    .line 111
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v4, v5

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    nop

    .line 115
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashSet;

    .line 116
    .local v5, "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    .line 117
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v5, v6

    .line 120
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    iget v7, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v6, v7, :cond_4

    if-eqz p2, :cond_5

    .line 125
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    .end local v4    # "ungroupedNotificationsByUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashSet<Ljava/lang/String;>;>;"
    .end local v5    # "notificationsForPackage":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 129
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    invoke-direct {p0, v2, v4, v3, v1}, Lcom/android/server/notification/GroupHelper;->adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/GroupHelper;->adjustNotificationBundling(Ljava/util/List;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/notification/GroupHelper;
    .end local p1    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local p2    # "autogroupSummaryExists":Z
    :try_start_4
    throw v1

    .line 135
    .restart local p0    # "this":Lcom/android/server/notification/GroupHelper;
    .restart local p1    # "sbn":Landroid/service/notification/StatusBarNotification;
    .restart local p2    # "autogroupSummaryExists":Z
    :cond_6
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 139
    .end local v0    # "notificationsToGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_0
    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GroupHelper"

    const-string v2, "Failure processing new notification"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 144
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->addToOngoingGroupCount(Landroid/service/notification/StatusBarNotification;Z)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GroupHelper"

    const-string v2, "Error processing canceled notification"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onNotificationUpdated(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 2
    .param p1, "childSbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "autogroupSummaryExists"    # Z

    .line 90
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ranker_group"

    if-ne v0, v1, :cond_2

    .line 91
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->addToOngoingGroupCount(Landroid/service/notification/StatusBarNotification;Z)V

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->addToOngoingGroupCount(Landroid/service/notification/StatusBarNotification;Z)V

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_2
    :goto_1
    return-void
.end method
