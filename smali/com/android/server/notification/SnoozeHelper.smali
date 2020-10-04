.class public Lcom/android/server/notification/SnoozeHelper;
.super Ljava/lang/Object;
.source "SnoozeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/SnoozeHelper$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field private static final EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field private static final INDENT:Ljava/lang/String; = "    "

.field private static final REPOST_ACTION:Ljava/lang/String;

.field private static final REPOST_SCHEME:Ljava/lang/String; = "repost"

.field private static final REQUEST_CODE_REPOST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SnoozeHelper"


# instance fields
.field private mAm:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

.field private final mContext:Landroid/content/Context;

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

.field private mSnoozedNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;>;>;"
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

    .line 60
    const-string v0, "SnoozeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    .line 63
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

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    .line 396
    new-instance v0, Lcom/android/server/notification/SnoozeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SnoozeHelper$1;-><init>(Lcom/android/server/notification/SnoozeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "repost"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 89
    iput-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    .line 90
    iput-object p3, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 91
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method private createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 333
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 336
    const-string/jumbo v3, "repost"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 337
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 338
    const-string/jumbo v2, "key"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 339
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 333
    const/4 v2, 0x1

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private scheduleRepost(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "duration"    # J

    .line 344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 346
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 347
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p4

    .line 349
    .local v3, "time":J
    sget-boolean v5, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SnoozeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling evaluate for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3, v4, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "time":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method protected cancel(ILjava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 210
    .local v0, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 211
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_0

    .line 212
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    iput-boolean v3, v4, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_0
    return v3

    .line 217
    .end local v0    # "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v1    # "N":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected cancel(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 165
    .local v0, "recordsForPkg":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 167
    .local v1, "records":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 168
    .local v3, "record":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 169
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v5, p4, :cond_0

    .line 170
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 171
    return v5

    .line 173
    .end local v3    # "record":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    goto :goto_0

    .line 176
    .end local v0    # "recordsForPkg":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v1    # "records":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected cancel(IZ)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "includeCurrentProfiles"    # Z

    .line 180
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 181
    .local v1, "userIds":[I
    if-eqz p2, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    .line 184
    :cond_0
    array-length v3, v1

    .line 185
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 186
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    aget v6, v1, v4

    .line 187
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 188
    .local v5, "snoozedPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    if-eqz v5, :cond_3

    .line 189
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 190
    .local v2, "M":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v2, :cond_2

    .line 191
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 192
    .local v7, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz v7, :cond_1

    .line 193
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 194
    .local v8, "P":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    if-ge v9, v8, :cond_1

    .line 195
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    iput-boolean v0, v10, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 194
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 190
    .end local v7    # "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v8    # "P":I
    .end local v9    # "k":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 199
    .end local v6    # "j":I
    :cond_2
    return v0

    .line 185
    .end local v2    # "M":I
    .end local v5    # "snoozedPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    .end local v4    # "i":I
    :cond_4
    return v2
.end method

.method protected clearData(ILjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 311
    .local v0, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    if-nez v0, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 315
    .local v1, "pkgRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v1, :cond_1

    .line 316
    return-void

    .line 318
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 319
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 320
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v3, :cond_2

    .line 321
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4, p1}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 324
    .local v4, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 325
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x33f

    .line 326
    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v5

    const/4 v6, 0x5

    .line 327
    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 325
    invoke-static {v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 318
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 330
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 357
    const-string v0, "\n  Snoozed notifications:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 359
    .local v1, "userId":I
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 363
    .local v3, "snoozedPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 364
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 368
    .local v6, "snoozedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 369
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    .end local v8    # "key":Ljava/lang/String;
    goto :goto_2

    .line 374
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "snoozedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_1

    .line 375
    .end local v1    # "userId":I
    .end local v3    # "snoozedPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    :cond_1
    goto/16 :goto_0

    .line 376
    :cond_2
    return-void
.end method

.method protected getSnoozed(ILjava/lang/String;)Ljava/util/Collection;
    .locals 2
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

    .line 100
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method protected getSnoozed()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "snoozedForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v1

    .line 110
    .local v1, "userIds":Landroid/util/IntArray;
    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 112
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 113
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 114
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 115
    .local v4, "snoozedPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 117
    .local v5, "M":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 118
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 119
    .local v7, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    .end local v7    # "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 112
    .end local v4    # "snoozedPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method protected isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 0
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    return-void
.end method

.method protected repost(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 242
    .local v0, "userId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;I)V

    .line 245
    :cond_0
    return-void
.end method

.method protected repost(Ljava/lang/String;I)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 248
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 251
    .local v1, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    if-nez v1, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 255
    .local v2, "pkgRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v2, :cond_1

    .line 256
    return-void

    .line 258
    :cond_1
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 259
    .local v3, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v4, :cond_2

    .line 263
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x33f

    .line 264
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v5, 0x1

    .line 265
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 263
    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 266
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    invoke-interface {v4, p2, v3}, Lcom/android/server/notification/SnoozeHelper$Callback;->repost(ILcom/android/server/notification/NotificationRecord;)V

    .line 268
    :cond_2
    return-void
.end method

.method protected repostGroupSummary(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "groupKey"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 275
    .local v0, "keysByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 278
    .local v1, "recordsByKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz v1, :cond_2

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "groupSummaryKey":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 281
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 282
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 283
    .local v5, "potentialGroupSummary":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 287
    goto :goto_1

    .line 281
    .end local v5    # "potentialGroupSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 291
    .end local v4    # "i":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 292
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 293
    .local v4, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    if-eqz v4, :cond_2

    iget-boolean v5, v4, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v5, :cond_2

    .line 297
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v5

    const/16 v6, 0x33f

    .line 298
    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 299
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v5

    .line 297
    invoke-static {v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 300
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    invoke-interface {v5, p2, v4}, Lcom/android/server/notification/SnoozeHelper$Callback;->repost(ILcom/android/server/notification/NotificationRecord;)V

    .line 306
    .end local v0    # "keysByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    .end local v1    # "recordsByKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v2    # "groupSummaryKey":Ljava/lang/String;
    .end local v3    # "N":I
    .end local v4    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    return-void
.end method

.method setAlarmManager(Landroid/app/AlarmManager;)V
    .locals 0
    .param p1, "am"    # Landroid/app/AlarmManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 390
    return-void
.end method

.method protected snooze(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 141
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 142
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 143
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

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 147
    .local v1, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    if-nez v1, :cond_1

    .line 148
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 150
    :cond_1
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 151
    .local v2, "pkgRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v2, :cond_2

    .line 152
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method protected snooze(Lcom/android/server/notification/NotificationRecord;J)V
    .locals 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "duration"    # J

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    .line 134
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepost(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 135
    return-void
.end method

.method protected update(ILcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 224
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 226
    .local v0, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;>;"
    if-nez v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 230
    .local v1, "pkgRecords":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    if-nez v1, :cond_1

    .line 231
    return-void

    .line 233
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 234
    .local v2, "existing":Lcom/android/server/notification/NotificationRecord;
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v3, :cond_2

    .line 235
    return-void

    .line 237
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method protected writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 0
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    return-void
.end method
