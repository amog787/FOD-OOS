.class public Lcom/android/server/notification/SnoozeHelper;
.super Ljava/lang/Object;
.source "SnoozeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/SnoozeHelper$Callback;,
        Lcom/android/server/notification/SnoozeHelper$Inserter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final EXTRA_KEY:Ljava/lang/String; = "key"

.field private static final EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field private static final INDENT:Ljava/lang/String; = "    "

.field private static final REPOST_ACTION:Ljava/lang/String;

.field private static final REPOST_SCHEME:Ljava/lang/String; = "repost"

.field private static final REQUEST_CODE_REPOST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SnoozeHelper"

.field private static final XML_SNOOZED_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final XML_SNOOZED_NOTIFICATION_CONTEXT:Ljava/lang/String; = "context"

.field private static final XML_SNOOZED_NOTIFICATION_CONTEXT_ID:Ljava/lang/String; = "id"

.field private static final XML_SNOOZED_NOTIFICATION_KEY:Ljava/lang/String; = "key"

.field private static final XML_SNOOZED_NOTIFICATION_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_SNOOZED_NOTIFICATION_TIME:Ljava/lang/String; = "time"

.field private static final XML_SNOOZED_NOTIFICATION_USER_ID:Ljava/lang/String; = "user-id"

.field public static final XML_SNOOZED_NOTIFICATION_VERSION:Ljava/lang/String; = "1"

.field private static final XML_SNOOZED_NOTIFICATION_VERSION_LABEL:Ljava/lang/String; = "version"

.field protected static final XML_TAG_NAME:Ljava/lang/String; = "snoozed-notifications"


# instance fields
.field private mAm:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistedSnoozedNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSnoozedNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const-string v0, "SnoozeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EVALUATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/notification/SnoozeHelper$Callback;
    .param p3, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 101
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 104
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    .line 667
    new-instance v0, Lcom/android/server/notification/SnoozeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SnoozeHelper$1;-><init>(Lcom/android/server/notification/SnoozeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "repost"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 118
    iput-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    .line 119
    iput-object p3, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 120
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method private createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 463
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 466
    const-string/jumbo v3, "repost"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 467
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 468
    const-string/jumbo v2, "key"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 469
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 463
    const/4 v2, 0x1

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getPkgKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$writeXml$3(JLorg/xmlpull/v1/XmlSerializer;Ljava/lang/Long;)V
    .locals 3
    .param p0, "currentTime"    # J
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "value"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    .line 557
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    const-string/jumbo v2, "time"

    invoke-interface {p2, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    return-void
.end method

.method static synthetic lambda$writeXml$4(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    return-void
.end method

.method private removeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;)Ljava/lang/Object;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;)TT;"
        }
    .end annotation

    .line 284
    .local p4, "targets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;TT;>;>;"
    const/4 v0, 0x0

    .line 285
    .local v0, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 286
    .local v1, "keyToValue":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-nez v1, :cond_0

    .line 287
    const/4 v2, 0x0

    return-object v2

    .line 289
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 291
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1
    return-object v0
.end method

.method private scheduleRepost(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "duration"    # J

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v6, v0, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepostAtTime(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 495
    return-void
.end method

.method private scheduleRepostAtTime(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "time"    # J

    .line 498
    new-instance v7, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;

    .local v7, "runnable":Ljava/lang/Runnable;
    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$qmPRhIe87AJQ1uMij6IuQyrejnw;-><init>(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 509
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 510
    return-void
.end method

.method private snooze(Lcom/android/server/notification/NotificationRecord;)V
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 259
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 260
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Snoozing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnoozeHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 264
    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;TT;)V"
        }
    .end annotation

    .line 272
    .local p4, "targets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;TT;>;>;"
    .local p5, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 275
    .local v0, "keyToValue":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-nez v0, :cond_0

    .line 276
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 278
    :cond_0
    invoke-virtual {v0, p2, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
.end method

.method private writeXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;Ljava/lang/String;Lcom/android/server/notification/SnoozeHelper$Inserter;)V
    .locals 11
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/SnoozeHelper$Inserter<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    .local p2, "targets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;TT;>;>;"
    .local p4, "attributeInserter":Lcom/android/server/notification/SnoozeHelper$Inserter;, "Lcom/android/server/notification/SnoozeHelper$Inserter<TT;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 581
    .local v0, "M":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 583
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 584
    .local v2, "keyToValue":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 585
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 586
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 587
    .local v5, "value":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 588
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 590
    .local v7, "userId":Ljava/lang/Integer;
    if-eqz v6, :cond_1

    if-nez v7, :cond_0

    goto :goto_2

    .line 595
    :cond_0
    const/4 v8, 0x0

    invoke-interface {p1, v8, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    invoke-interface {p4, v5}, Lcom/android/server/notification/SnoozeHelper$Inserter;->insert(Ljava/lang/Object;)V

    .line 599
    const-string/jumbo v9, "version"

    const-string v10, "1"

    invoke-interface {p1, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    const-string/jumbo v9, "key"

    invoke-interface {p1, v8, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    const-string/jumbo v9, "pkg"

    invoke-interface {p1, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    nop

    .line 606
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 605
    const-string/jumbo v10, "user-id"

    invoke-interface {p1, v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    invoke-interface {p1, v8, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 591
    :cond_1
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " or user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " missing for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SnoozeHelper"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    nop

    .line 584
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;, "TT;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/Integer;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 581
    .end local v2    # "keyToValue":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 611
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method protected cancel(IZ)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "includeCurrentProfiles"    # Z

    .line 315
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 317
    monitor-exit v0

    return-void

    .line 319
    :cond_0
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 320
    .local v1, "userIds":Landroid/util/IntArray;
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 321
    if-eqz p2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v2

    move-object v1, v2

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 325
    .local v3, "snoozedRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 326
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v6

    if-ltz v6, :cond_2

    .line 327
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 329
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    goto :goto_1

    .line 330
    .end local v3    # "snoozedRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :cond_3
    goto :goto_0

    .line 331
    .end local v1    # "userIds":Landroid/util/IntArray;
    :cond_4
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected cancel(ILjava/lang/String;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 338
    .local v1, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v1, :cond_0

    .line 339
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 341
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 342
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1

    .line 343
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iput-boolean v4, v5, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    return v4

    .line 346
    .end local v1    # "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v2    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected cancel(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 300
    .local v1, "recordsForPkg":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 302
    .local v2, "records":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 303
    .local v4, "record":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 304
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v6, p4, :cond_0

    .line 305
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 306
    monitor-exit v0

    return v6

    .line 308
    .end local v4    # "record":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    goto :goto_0

    .line 310
    .end local v1    # "recordsForPkg":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v2    # "records":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    :cond_1
    monitor-exit v0

    .line 311
    const/4 v0, 0x0

    return v0

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cleanupPersistedContext(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 129
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->removeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;)Ljava/lang/Object;

    .line 131
    nop

    .end local v1    # "userId":I
    .end local v2    # "pkg":Ljava/lang/String;
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected clearData(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 440
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 441
    .local v1, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v1, :cond_0

    .line 442
    monitor-exit v0

    return-void

    .line 444
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 445
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 446
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v3, :cond_1

    .line 447
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v4, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;

    invoke-direct {v4, p0, p2, v3, p1}, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$D5kHuB_jXliawCK89mwM2BjUeAw;-><init>(Lcom/android/server/notification/SnoozeHelper;Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;I)V

    .line 456
    .local v4, "runnable":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 444
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "runnable":Ljava/lang/Runnable;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 459
    .end local v1    # "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 513
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_0
    const-string v1, "\n  Snoozed notifications:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 516
    .local v2, "userPkgKey":Ljava/lang/String;
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 519
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 520
    .local v3, "snoozedRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 521
    .local v4, "snoozedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 522
    .local v6, "key":Ljava/lang/String;
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 523
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_1

    .line 527
    .end local v2    # "userPkgKey":Ljava/lang/String;
    .end local v3    # "snoozedRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v4    # "snoozedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 528
    :cond_1
    const-string v1, "\n Pending snoozed notifications"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 530
    .restart local v2    # "userPkgKey":Ljava/lang/String;
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 533
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 534
    .local v3, "snoozedRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v3, :cond_2

    .line 535
    goto :goto_2

    .line 537
    :cond_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 538
    .restart local v4    # "snoozedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 539
    .restart local v6    # "key":Ljava/lang/String;
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 543
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 545
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_3

    .line 546
    .end local v2    # "userPkgKey":Ljava/lang/String;
    .end local v3    # "snoozedRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "snoozedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    goto :goto_2

    .line 547
    :cond_4
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 206
    invoke-direct {p0, v1, v3}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 207
    .local v4, "snoozed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v4, :cond_1

    .line 208
    monitor-exit v0

    return-object v2

    .line 210
    :cond_1
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    monitor-exit v0

    return-object v2

    .line 200
    .end local v1    # "userId":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "snoozed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :cond_2
    :goto_0
    const-string v1, "SnoozeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Snoozed data sets no longer agree for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-exit v0

    return-object v2

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "groupKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 183
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 184
    .local v2, "allRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz v2, :cond_1

    .line 185
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 186
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 187
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "currentGroupKey":Ljava/lang/String;
    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "currentGroupKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "allRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    .line 194
    return-object v0

    .line 193
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 154
    .local v1, "snoozed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 157
    .end local v1    # "snoozed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit v0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "time":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 140
    .local v2, "snoozed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object v0, v3

    .line 143
    .end local v2    # "snoozed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-nez v0, :cond_1

    .line 145
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 147
    :cond_1
    return-object v0

    .line 143
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected getSnoozed(ILjava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 173
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 173
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getSnoozed()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v1, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, "userPkgKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 221
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 222
    .local v4, "snoozedRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    nop

    .end local v3    # "userPkgKey":Ljava/lang/String;
    .end local v4    # "snoozedRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    goto :goto_0

    .line 224
    :cond_0
    monitor-exit v0

    return-object v1

    .line 225
    .end local v1    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 163
    return v1

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$clearData$1$SnoozeHelper(Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "userId"    # I

    .line 450
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 451
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 452
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    .line 453
    const/16 v2, 0x33f

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 454
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 452
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 455
    return-void
.end method

.method public synthetic lambda$repostGroupSummary$0$SnoozeHelper(Lcom/android/server/notification/NotificationRecord;I)V
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .line 426
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    .line 427
    const/16 v1, 0x33f

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 428
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 426
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, p2, p1, v1}, Lcom/android/server/notification/SnoozeHelper$Callback;->repost(ILcom/android/server/notification/NotificationRecord;Z)V

    .line 430
    return-void
.end method

.method public synthetic lambda$scheduleRepostAtTime$2$SnoozeHelper(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "time"    # J

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 501
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 502
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 503
    sget-boolean v3, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SnoozeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling evaluate for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p4, p5, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .end local v2    # "pi":Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    nop

    .line 508
    return-void

    .line 506
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    throw v2
.end method

.method protected readXml(Lorg/xmlpull/v1/XmlPullParser;J)V
    .locals 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p1

    .line 616
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v12, v0

    .local v12, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 617
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 618
    .local v13, "tag":Ljava/lang/String;
    const/4 v0, 0x3

    if-ne v12, v0, :cond_0

    .line 619
    const-string/jumbo v0, "snoozed-notifications"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    goto/16 :goto_4

    .line 622
    :cond_0
    const/4 v0, 0x2

    if-ne v12, v0, :cond_4

    .line 623
    const-string/jumbo v0, "notification"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    const-string v0, "context"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    nop

    .line 625
    const/4 v0, 0x0

    const-string/jumbo v1, "version"

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 628
    :try_start_0
    const-string/jumbo v1, "key"

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v1, "pkg"

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v1, "user-id"

    const/4 v4, -0x1

    invoke-static {v11, v1, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    move v14, v1

    .line 632
    .local v14, "userId":I
    const-string/jumbo v1, "notification"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    const-string/jumbo v1, "time"

    const-wide/16 v4, 0x0

    invoke-static {v11, v1, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 635
    .local v6, "time":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p2

    if-lez v1, :cond_2

    .line 636
    iget-object v7, v10, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    nop

    .line 638
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    .line 637
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 639
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v12    # "type":I
    .end local v13    # "tag":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/notification/SnoozeHelper;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "currentTime":J
    :try_start_2
    throw v0

    .line 642
    .end local v6    # "time":Ljava/lang/Long;
    .restart local v12    # "type":I
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/notification/SnoozeHelper;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "currentTime":J
    :cond_2
    :goto_1
    const-string v1, "context"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    const-string v1, "id"

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 645
    .local v9, "creationId":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 646
    nop

    .line 647
    :try_start_3
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v10, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 646
    move-object v4, p0

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 649
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v12    # "type":I
    .end local v13    # "tag":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/notification/SnoozeHelper;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "currentTime":J
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 653
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v9    # "creationId":Ljava/lang/String;
    .end local v14    # "userId":I
    .restart local v12    # "type":I
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/notification/SnoozeHelper;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "currentTime":J
    :cond_3
    :goto_2
    goto :goto_3

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SnoozeHelper"

    const-string v2, "Exception in reading snooze data from policy xml"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "tag":Ljava/lang/String;
    :cond_4
    :goto_3
    goto/16 :goto_0

    .line 656
    :cond_5
    :goto_4
    return-void
.end method

.method protected repost(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "muteOnReturn"    # Z

    .line 374
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 376
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->removeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;)Ljava/lang/Object;

    .line 378
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->removeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;)Ljava/lang/Object;

    .line 379
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 380
    invoke-direct {p0, p2, v1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 381
    .local v2, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v2, :cond_0

    .line 382
    monitor-exit v0

    return-void

    .line 384
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    move-object v1, v3

    .line 386
    .end local v2    # "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .local v1, "record":Lcom/android/server/notification/NotificationRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v0, :cond_1

    .line 389
    nop

    .line 390
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 391
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 392
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x33f

    .line 393
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v3, 0x1

    .line 394
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 392
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 395
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    invoke-interface {v2, p2, v1, p3}, Lcom/android/server/notification/SnoozeHelper$Callback;->repost(ILcom/android/server/notification/NotificationRecord;Z)V

    .line 397
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_1
    return-void

    .line 386
    .end local v1    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected repost(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "muteOnReturn"    # Z

    .line 364
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 366
    .local v1, "userId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;IZ)V

    .line 369
    .end local v1    # "userId":Ljava/lang/Integer;
    :cond_0
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected repostGroupSummary(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "groupKey"    # Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 402
    invoke-direct {p0, p2, p1}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 403
    .local v1, "recordsByKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v1, :cond_0

    .line 404
    monitor-exit v0

    return-void

    .line 407
    :cond_0
    const/4 v2, 0x0

    .line 408
    .local v2, "groupSummaryKey":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 409
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 410
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 411
    .local v5, "potentialGroupSummary":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 412
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 413
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 414
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 415
    goto :goto_1

    .line 409
    .end local v5    # "potentialGroupSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    .end local v4    # "i":I
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 420
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 421
    .local v4, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    if-eqz v4, :cond_3

    iget-boolean v5, v4, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v5, :cond_3

    .line 425
    new-instance v5, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$q-Mhe_FlF2qbbfgD79RFst-72Ro;

    invoke-direct {v5, p0, v4, p2}, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$q-Mhe_FlF2qbbfgD79RFst-72Ro;-><init>(Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationRecord;I)V

    .line 431
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 434
    .end local v1    # "recordsByKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v2    # "groupSummaryKey":Ljava/lang/String;
    .end local v3    # "N":I
    .end local v4    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "runnable":Ljava/lang/Runnable;
    :cond_3
    monitor-exit v0

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scheduleRepostsForPersistedNotifications(J)V
    .locals 15
    .param p1, "currentTime"    # J

    .line 474
    move-object v7, p0

    iget-object v8, v7, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 475
    :try_start_0
    iget-object v0, v7, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    move-object v9, v1

    .line 476
    .local v9, "snoozed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    move v10, v1

    .local v10, "i":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 477
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v11, v1

    .line 478
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v12, v1

    .line 479
    .local v12, "time":Ljava/lang/Long;
    iget-object v1, v7, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    .line 480
    .local v13, "pkg":Ljava/lang/String;
    iget-object v1, v7, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v14, v1

    .line 481
    .local v14, "userId":Ljava/lang/Integer;
    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    if-nez v14, :cond_0

    goto :goto_2

    .line 485
    :cond_0
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_2

    .line 486
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, v13

    move-object v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepostAtTime(Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_3

    .line 482
    :cond_1
    :goto_2
    const-string v1, "SnoozeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data out of sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    nop

    .line 476
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "time":Ljava/lang/Long;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "userId":Ljava/lang/Integer;
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 489
    .end local v9    # "snoozed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "i":I
    :cond_3
    goto/16 :goto_0

    .line 490
    :cond_4
    monitor-exit v8

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAlarmManager(Landroid/app/AlarmManager;)V
    .locals 0
    .param p1, "am"    # Landroid/app/AlarmManager;

    .line 660
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 661
    return-void
.end method

.method protected snooze(Lcom/android/server/notification/NotificationRecord;J)V
    .locals 11
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "duration"    # J

    .line 232
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 236
    .local v8, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    .line 237
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v4, v8

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepost(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 239
    .local v9, "activateAt":Ljava/lang/Long;
    iget-object v10, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 240
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 241
    monitor-exit v10

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected snooze(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "contextId"    # Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 249
    .local v0, "userId":I
    if-eqz p2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    .line 251
    move-object v3, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/SnoozeHelper;->storeRecordLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/util/ArrayMap;Ljava/lang/Object;)V

    .line 253
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 255
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    .line 256
    return-void
.end method

.method protected update(ILcom/android/server/notification/NotificationRecord;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 353
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 355
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/SnoozeHelper;->getPkgKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 356
    .local v1, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v1, :cond_0

    .line 357
    monitor-exit v0

    return-void

    .line 359
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    nop

    .end local v1    # "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 553
    .local v1, "currentTime":J
    const-string/jumbo v3, "snoozed-notifications"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 554
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotifications:Landroid/util/ArrayMap;

    const-string/jumbo v5, "notification"

    new-instance v6, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$j9CMOic9PGs_JNf8sQeWp_WInBo;

    invoke-direct {v6, v1, v2, p1}, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$j9CMOic9PGs_JNf8sQeWp_WInBo;-><init>(JLorg/xmlpull/v1/XmlSerializer;)V

    invoke-direct {p0, p1, v3, v5, v6}, Lcom/android/server/notification/SnoozeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;Ljava/lang/String;Lcom/android/server/notification/SnoozeHelper$Inserter;)V

    .line 562
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPersistedSnoozedNotificationsWithContext:Landroid/util/ArrayMap;

    const-string v5, "context"

    new-instance v6, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$C_0X0DORXKfskVjWiTfpnyCI82U;

    invoke-direct {v6, p1}, Lcom/android/server/notification/-$$Lambda$SnoozeHelper$C_0X0DORXKfskVjWiTfpnyCI82U;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-direct {p0, p1, v3, v5, v6}, Lcom/android/server/notification/SnoozeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArrayMap;Ljava/lang/String;Lcom/android/server/notification/SnoozeHelper$Inserter;)V

    .line 568
    const-string/jumbo v3, "snoozed-notifications"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    nop

    .end local v1    # "currentTime":J
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
