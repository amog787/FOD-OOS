.class public Lcom/android/server/notification/OpNotificationInjector;
.super Ljava/lang/Object;
.source "OpNotificationInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpNotificationInjector"

.field private static sInstance:Lcom/android/server/notification/OpNotificationInjector;


# instance fields
.field private inited:Z

.field private mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/notification/OpNotificationInjector;->sInstance:Lcom/android/server/notification/OpNotificationInjector;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/OpNotificationInjector;->mNotificationList:Ljava/util/ArrayList;

    .line 21
    iput-object v0, p0, Lcom/android/server/notification/OpNotificationInjector;->mNotificationLock:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/OpNotificationInjector;->inited:Z

    .line 26
    sput-object p0, Lcom/android/server/notification/OpNotificationInjector;->sInstance:Lcom/android/server/notification/OpNotificationInjector;

    .line 27
    return-void
.end method

.method private checkPkgHoldNotification(Ljava/lang/String;IZZ)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isCareFg"    # Z
    .param p4, "isPosted"    # Z

    .line 43
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 44
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/notification/OpNotificationInjector;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/OpNotificationInjector;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 46
    .local v3, "n":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    if-ne v4, v0, :cond_3

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 47
    const/4 v4, 0x1

    if-eqz p4, :cond_1

    .line 48
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    if-eqz p3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    monitor-exit v1

    return v4

    .line 51
    :cond_0
    if-nez p3, :cond_3

    .line 52
    monitor-exit v1

    return v4

    .line 56
    :cond_1
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    if-eqz p3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    monitor-exit v1

    return v4

    .line 59
    :cond_2
    if-nez p3, :cond_3

    .line 60
    monitor-exit v1

    return v4

    .line 65
    .end local v3    # "n":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    goto :goto_0

    .line 66
    :cond_4
    monitor-exit v1

    .line 67
    const/4 v1, 0x0

    return v1

    .line 66
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static isPkgHoldNotification(Ljava/lang/String;IZZ)I
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "isCareFg"    # Z
    .param p3, "isPosted"    # Z

    .line 36
    sget-object v0, Lcom/android/server/notification/OpNotificationInjector;->sInstance:Lcom/android/server/notification/OpNotificationInjector;

    iget-boolean v1, v0, Lcom/android/server/notification/OpNotificationInjector;->inited:Z

    if-nez v1, :cond_0

    .line 37
    const/4 v0, -0x1

    return v0

    .line 39
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/OpNotificationInjector;->checkPkgHoldNotification(Ljava/lang/String;IZZ)I

    move-result v0

    return v0
.end method

.method static prepare(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 2
    .param p1, "notificationLock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 30
    .local p0, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    sget-object v0, Lcom/android/server/notification/OpNotificationInjector;->sInstance:Lcom/android/server/notification/OpNotificationInjector;

    iput-object p0, v0, Lcom/android/server/notification/OpNotificationInjector;->mNotificationList:Ljava/util/ArrayList;

    .line 31
    iput-object p1, v0, Lcom/android/server/notification/OpNotificationInjector;->mNotificationLock:Ljava/lang/Object;

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/notification/OpNotificationInjector;->inited:Z

    .line 33
    return-void
.end method


# virtual methods
.method public isToastNeedBlockInEsportMode(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/app/IActivityManager;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iPm"    # Landroid/content/pm/IPackageManager;
    .param p3, "iAm"    # Landroid/app/IActivityManager;

    .line 75
    const-string v0, "OpNotificationInjector"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 76
    const-string/jumbo v2, "packagename is null"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v1

    .line 80
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {p2, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 81
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_1

    .line 82
    const-string v3, "This is a system app"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1

    .line 85
    :cond_1
    invoke-interface {p3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 86
    .local v3, "pis":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 87
    .local v5, "e":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v5, :cond_2

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 89
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    const-string v4, "This is foreground app."

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return v1

    .line 94
    .end local v5    # "e":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    goto :goto_0

    .line 97
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pis":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while checking system app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
