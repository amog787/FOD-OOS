.class public Lcom/android/server/wm/RecentTasksInjector;
.super Ljava/lang/Object;
.source "RecentTasksInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;
    }
.end annotation


# static fields
.field public static final DEBUG_ONEPLUS:Z

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field private static final RECENT_WITH_INVISIBLE:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "RecentTasksInjector"

.field private static final URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;


# instance fields
.field private mATMService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mLockedTasksContentObserver:Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;

.field private mLockedTasksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumObservedLockedTasks:I

.field private mStartToMonitorUserSwitching:Z

.field private mStartingOberveLockedTasks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentTasksInjector;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    .line 44
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/RecentTasksInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I

    .line 48
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mStartToMonitorUserSwitching:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mStartingOberveLockedTasks:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/RecentTasksInjector;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;-><init>(Lcom/android/server/wm/RecentTasksInjector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksContentObserver:Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;

    .line 67
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/server/wm/RecentTasksInjector;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentTasksInjector;)Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentTasksInjector;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksContentObserver:Lcom/android/server/wm/RecentTasksInjector$LockedTasksContentObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/RecentTasksInjector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentTasksInjector;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/RecentTasksInjector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RecentTasksInjector;

    .line 39
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasksInjector;->updateLockedTaskInfoLocked()V

    return-void
.end method

.method public static isRecentWithInvisible(II)Z
    .locals 2
    .param p0, "flags"    # I
    .param p1, "callingUid"    # I

    .line 57
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRecentTasks for invisible task from callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentTasksInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private parseLockedStr(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "lockedStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 173
    :cond_0
    :try_start_0
    const-string v1, "\\}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "keys":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 175
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 177
    aget-object v3, v1, v2

    const-string v4, "{"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "RecentTasksInjector"

    const-string v4, "Exception while parsing recent task locked info"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 168
    :cond_2
    :goto_2
    return-object v0
.end method

.method private updateLockedTaskInfoLocked()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "lockedStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentTasksInjector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method dumpLockedTasks(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "  Locked recent tasks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    const-string v1, "  * Recent #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 192
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method ensureAndUpdateLockedTasksInfoObserver()V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mStartingOberveLockedTasks:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mStartingOberveLockedTasks:Z

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/RecentTasksInjector$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/RecentTasksInjector$1;-><init>(Lcom/android/server/wm/RecentTasksInjector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasksInjector;->updateLockedTaskInfoLocked()V

    .line 125
    return-void
.end method

.method ensureUserSwitchingObserved()V
    .locals 4

    .line 128
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mStartToMonitorUserSwitching:Z

    if-nez v0, :cond_0

    .line 131
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/RecentTasksInjector$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/RecentTasksInjector$2;-><init>(Lcom/android/server/wm/RecentTasksInjector;)V

    const-class v2, Lcom/android/server/wm/RecentTasksInjector;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "RecentTasksInjector"

    const-string v3, "Exception while registering user changing"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mStartToMonitorUserSwitching:Z

    .line 143
    :cond_0
    return-void
.end method

.method getLockedRecentsCount()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getObservedLockedTasksCount()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I

    return v0
.end method

.method isInVisibleRange(Lcom/android/server/wm/Task;)Z
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasksInjector;->isRecentTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I

    .line 90
    monitor-exit v0

    return v2

    .line 92
    :cond_0
    monitor-exit v0

    .line 95
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/wm/RecentTasksInjector;
    .end local p1    # "task":Lcom/android/server/wm/Task;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    .restart local p0    # "this":Lcom/android/server/wm/RecentTasksInjector;
    .restart local p1    # "task":Lcom/android/server/wm/Task;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "RecentTasksInjector"

    const-string v3, "Exception while checking recent task locked state"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method isRecentTaskLocked(Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "taskUserInfo":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task_user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentTasksInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasksInjector;->mLockedTasksList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method resetObservedLockedTasksCount()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/RecentTasksInjector;->mNumObservedLockedTasks:I

    .line 75
    return-void
.end method
