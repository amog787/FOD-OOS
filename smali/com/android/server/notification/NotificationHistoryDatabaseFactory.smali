.class public Lcom/android/server/notification/NotificationHistoryDatabaseFactory;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabaseFactory.java"


# static fields
.field private static sTestingNotificationHistoryDb:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/notification/NotificationHistoryDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "rootDir"    # Ljava/io/File;

    .line 35
    sget-object v0, Lcom/android/server/notification/NotificationHistoryDatabaseFactory;->sTestingNotificationHistoryDb:Lcom/android/server/notification/NotificationHistoryDatabase;

    if-eqz v0, :cond_0

    .line 36
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)V

    return-object v0
.end method

.method public static setTestingNotificationHistoryDatabase(Lcom/android/server/notification/NotificationHistoryDatabase;)V
    .locals 0
    .param p0, "db"    # Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 30
    sput-object p0, Lcom/android/server/notification/NotificationHistoryDatabaseFactory;->sTestingNotificationHistoryDb:Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 31
    return-void
.end method
