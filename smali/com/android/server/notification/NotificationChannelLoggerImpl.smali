.class public Lcom/android/server/notification/NotificationChannelLoggerImpl;
.super Ljava/lang/Object;
.source "NotificationChannelLoggerImpl.java"

# interfaces
.implements Lcom/android/server/notification/NotificationChannelLogger;


# instance fields
.field mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationChannelLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public logAppEvent(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/server/notification/NotificationChannelLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V
    .locals 7
    .param p1, "event"    # Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .param p2, "channel"    # Landroid/app/NotificationChannel;
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "oldImportance"    # I
    .param p6, "newImportance"    # I

    .line 38
    nop

    .line 39
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getId()I

    move-result v1

    .line 42
    invoke-static {p2}, Lcom/android/server/notification/NotificationChannelLogger;->getIdHash(Landroid/app/NotificationChannel;)I

    move-result v4

    .line 38
    const/16 v0, 0xf6

    move v2, p3

    move-object v3, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;III)V

    .line 45
    return-void
.end method

.method public logNotificationChannelGroup(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannelGroup;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "event"    # Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .param p2, "channelGroup"    # Landroid/app/NotificationChannelGroup;
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "wasBlocked"    # Z

    .line 50
    nop

    .line 51
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getId()I

    move-result v1

    .line 54
    invoke-static {p2}, Lcom/android/server/notification/NotificationChannelLogger;->getIdHash(Landroid/app/NotificationChannelGroup;)I

    move-result v4

    .line 55
    invoke-static {p5}, Lcom/android/server/notification/NotificationChannelLogger;->getImportance(Z)I

    move-result v5

    .line 56
    invoke-static {p2}, Lcom/android/server/notification/NotificationChannelLogger;->getImportance(Landroid/app/NotificationChannelGroup;)I

    move-result v6

    .line 50
    const/16 v0, 0xf6

    move v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;III)V

    .line 57
    return-void
.end method
