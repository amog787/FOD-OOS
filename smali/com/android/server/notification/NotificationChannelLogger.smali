.class public interface abstract Lcom/android/server/notification/NotificationChannelLogger;
.super Ljava/lang/Object;
.source "NotificationChannelLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    }
.end annotation


# direct methods
.method public static getIdHash(Landroid/app/NotificationChannel;)I
    .locals 1
    .param p0, "channel"    # Landroid/app/NotificationChannel;

    .line 214
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIdHash(Landroid/app/NotificationChannelGroup;)I
    .locals 1
    .param p0, "group"    # Landroid/app/NotificationChannelGroup;

    .line 221
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getImportance(Landroid/app/NotificationChannelGroup;)I
    .locals 1
    .param p0, "channelGroup"    # Landroid/app/NotificationChannelGroup;

    .line 249
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationChannelLogger;->getImportance(Z)I

    move-result v0

    return v0
.end method

.method public static getImportance(Z)I
    .locals 1
    .param p0, "isBlocked"    # Z

    .line 256
    if-eqz p0, :cond_0

    .line 257
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :cond_0
    const/4 v0, 0x3

    .line 256
    :goto_0
    return v0
.end method

.method public static getLoggingImportance(Landroid/app/NotificationChannel;)I
    .locals 1
    .param p0, "channel"    # Landroid/app/NotificationChannel;

    .line 229
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v0

    return v0
.end method

.method public static getLoggingImportance(Landroid/app/NotificationChannel;I)I
    .locals 1
    .param p0, "channel"    # Landroid/app/NotificationChannel;
    .param p1, "importance"    # I

    .line 237
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x5

    goto :goto_0

    .line 242
    :cond_1
    move v0, p1

    .line 240
    :goto_0
    return v0

    .line 238
    :cond_2
    :goto_1
    return p1
.end method


# virtual methods
.method public abstract logAppEvent(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;ILjava/lang/String;)V
.end method

.method public logAppNotificationsAllowed(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 111
    invoke-static {p3}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getBlocked(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/notification/NotificationChannelLogger;->logAppEvent(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;ILjava/lang/String;)V

    .line 112
    return-void
.end method

.method public abstract logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V
.end method

.method public logNotificationChannelCreated(Landroid/app/NotificationChannel;ILjava/lang/String;)V
    .locals 7
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 46
    nop

    .line 47
    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getCreated(Landroid/app/NotificationChannel;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v1

    .line 48
    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v6

    .line 46
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    .line 49
    return-void
.end method

.method public logNotificationChannelDeleted(Landroid/app/NotificationChannel;ILjava/lang/String;)V
    .locals 7
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 59
    nop

    .line 60
    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getDeleted(Landroid/app/NotificationChannel;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v1

    .line 61
    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v5

    .line 59
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    .line 62
    return-void
.end method

.method public logNotificationChannelGroup(Landroid/app/NotificationChannelGroup;ILjava/lang/String;ZZ)V
    .locals 6
    .param p1, "channelGroup"    # Landroid/app/NotificationChannelGroup;
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "isNew"    # Z
    .param p5, "wasBlocked"    # Z

    .line 88
    invoke-static {p4}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getGroupUpdated(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroup(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannelGroup;ILjava/lang/String;Z)V

    .line 90
    return-void
.end method

.method public abstract logNotificationChannelGroup(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannelGroup;ILjava/lang/String;Z)V
.end method

.method public logNotificationChannelGroupDeleted(Landroid/app/NotificationChannelGroup;ILjava/lang/String;)V
    .locals 6
    .param p1, "channelGroup"    # Landroid/app/NotificationChannelGroup;
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelGroup(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannelGroup;ILjava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V
    .locals 7
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "oldLoggingImportance"    # I
    .param p5, "byUser"    # Z

    .line 74
    invoke-static {p5}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getUpdated(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    move-result-object v1

    .line 75
    invoke-static {p1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;)I

    move-result v6

    .line 74
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    .line 76
    return-void
.end method
