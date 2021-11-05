.class public Lcom/android/server/wm/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final PERSISTED_TASK_IDS_FILENAME:Ljava/lang/String; = "persisted_taskIds.txt"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_FILENAME_SUFFIX:Ljava/lang/String; = "_task.xml"


# instance fields
.field private final mIoLock:Ljava/lang/Object;

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTaskIdsDir:Ljava/io/File;

.field private final mTaskIdsInFile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "workingDir"    # Ljava/io/File;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 114
    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 115
    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 116
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 117
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 118
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V
    .locals 5
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p4, "recentTasks"    # Lcom/android/server/wm/RecentTasks;
    .param p5, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v0, "legacyImagesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "TaskPersister"

    if-eqz v1, :cond_1

    .line 90
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure deleting legacy images directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "recent_tasks"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v1, "legacyTasksDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 98
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure deleting legacy tasks directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "system_de"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 103
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 104
    iput-object p3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 105
    iput-object p4, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 106
    iput-object p5, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 107
    invoke-virtual {p5, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # I

    .line 61
    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 503
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 504
    .local v0, "parentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .line 242
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "newline":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 245
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 247
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 252
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t read file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskPersister"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v2, 0x0

    return-object v2
.end method

.method private getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 238
    .local v0, "item":Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static getUserImagesDir(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 499
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "recent_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 487
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    .local v0, "userTaskIdsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while creating user directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskPersister"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "persisted_taskIds.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getUserTasksDir(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 495
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "recent_tasks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getImageFromWriteQueue$2(Ljava/lang/String;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "queueItem"    # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 237
    iget-object v0, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeThumbnails$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .locals 3
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "item"    # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 123
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$wakeup$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z
    .locals 1
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "queueItem"    # Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 191
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->access$200(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 470
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 473
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v1

    .line 474
    .local v1, "candidateUserIds":[I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 475
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, v1, v2

    .line 476
    .local v3, "userId":I
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 477
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 475
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void

    .line 474
    .end local v1    # "candidateUserIds":[I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .locals 8
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 421
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const-string v0, "TaskPersister"

    if-nez p1, :cond_0

    .line 422
    const-string v1, "File error accessing recents directory (directory doesn\'t exist?)."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 425
    :cond_0
    const/4 v1, 0x0

    .local v1, "fileNdx":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 426
    aget-object v2, p1, v1

    .line 427
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "filename":Ljava/lang/String;
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 429
    .local v4, "taskIdEnd":I
    if-lez v4, :cond_1

    .line 432
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .local v5, "taskId":I
    nop

    .line 439
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 441
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 434
    .end local v5    # "taskId":I
    :catch_0
    move-exception v5

    .line 435
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeObsoleteFiles: Can\'t parse file="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 425
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "taskIdEnd":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "fileNdx":I
    :cond_2
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPersister$8MhgCrM41UuyRqTjWwKtfifKRLo;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$8MhgCrM41UuyRqTjWwKtfifKRLo;-><init>(Lcom/android/server/wm/Task;)V

    const-class v2, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 127
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .line 483
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;
    .locals 4
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 259
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 260
    return-object v0

    .line 262
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 263
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 264
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_1

    .line 265
    return-object v2

    .line 262
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 268
    .end local v1    # "taskNdx":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore affiliation error looking for taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskPersister"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-object v0
.end method

.method private writeTaskIdsFiles()V
    .locals 10

    .line 448
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 449
    .local v0, "changedTaskIdsPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 450
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 451
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/RecentTasks;->getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 452
    .local v6, "taskIdsToSave":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 453
    .local v7, "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 454
    goto :goto_1

    .line 456
    :cond_0
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v8

    .line 457
    .local v8, "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    iget-object v9, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    .end local v5    # "userId":I
    .end local v6    # "taskIdsToSave":Landroid/util/SparseBooleanArray;
    .end local v7    # "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    .end local v8    # "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 461
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 463
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 464
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 463
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 466
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 461
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method


# virtual methods
.method flush()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->flush()V

    .line 215
    return-void
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 230
    return-object v0

    .line 232
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .locals 10
    .param p1, "userId"    # I

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 135
    .local v0, "persistedTaskIds":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    const/4 v2, 0x0

    .line 139
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 140
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 141
    const-string v3, "\\s+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 142
    .local v7, "taskIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 143
    .local v8, "id":I
    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v7    # "taskIdString":Ljava/lang/String;
    .end local v8    # "id":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 151
    :cond_2
    :try_start_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    goto :goto_3

    .line 151
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 148
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while reading taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 151
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 152
    nop

    .end local v0    # "persistedTaskIds":Landroid/util/SparseBooleanArray;
    .end local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .end local p1    # "userId":I
    throw v3

    .line 146
    .restart local v0    # "persistedTaskIds":Landroid/util/SparseBooleanArray;
    .restart local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .restart local p1    # "userId":I
    :catch_1
    move-exception v3

    .line 151
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 152
    nop

    .line 153
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    return-object v1

    .line 153
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public onPreProcessItem(Z)V
    .locals 4
    .param p1, "queueEmpty"    # Z

    .line 404
    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 409
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->getPersistableTaskIds(Landroid/util/ArraySet;)V

    .line 410
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 411
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v3

    .line 410
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 412
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 415
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/TaskPersister;->writeTaskIdsFiles()V

    .line 416
    return-void
.end method

.method restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
    .locals 18
    .param p1, "userId"    # I
    .param p2, "preaddedTasks"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseBooleanArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 273
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 274
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v0

    .line 276
    .local v4, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v5

    .line 278
    .local v5, "userTasksDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 279
    .local v6, "recentFiles":[Ljava/io/File;
    const-string v7, "TaskPersister"

    if-nez v6, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreTasksForUserLocked: Unable to list files from "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v3

    .line 284
    :cond_0
    const/4 v0, 0x0

    move v8, v0

    .local v8, "taskNdx":I
    :goto_0
    array-length v0, v6

    const/4 v9, 0x1

    if-ge v8, v0, :cond_b

    .line 285
    aget-object v10, v6, v8

    .line 291
    .local v10, "taskFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "_task.xml"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    move-object/from16 v16, v6

    move/from16 v17, v8

    goto/16 :goto_8

    .line 295
    :cond_1
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v12, v11

    .line 295
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, "taskId":I
    move-object/from16 v12, p2

    invoke-virtual {v12, v0, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v11, :cond_2

    .line 299
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Task #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " has already been created so we don\'t restore again"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    move-object/from16 v16, v6

    move/from16 v17, v8

    goto/16 :goto_8

    .line 303
    .end local v0    # "taskId":I
    :catch_0
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v8

    goto/16 :goto_7

    .line 306
    :cond_2
    nop

    .line 308
    const/4 v11, 0x0

    .line 309
    .local v11, "reader":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 311
    .local v13, "deleteFile":Z
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v11, v0

    .line 312
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 313
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 316
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v15, v14

    .local v15, "event":I
    if-eq v14, v9, :cond_8

    const/4 v14, 0x3

    if-eq v15, v14, :cond_8

    .line 318
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 319
    .local v14, "name":Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v15, v9, :cond_7

    .line 321
    const-string v9, "task"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 322
    iget-object v9, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v0, v9}, Lcom/android/server/wm/Task;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/Task;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    .local v9, "task":Lcom/android/server/wm/Task;
    if-eqz v9, :cond_5

    .line 331
    move-object/from16 v16, v6

    .end local v6    # "recentFiles":[Ljava/io/File;
    .local v16, "recentFiles":[Ljava/io/File;
    :try_start_3
    iget v6, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 332
    .local v6, "taskId":I
    iget-object v12, v1, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v17, v8

    const/4 v8, 0x1

    .end local v8    # "taskNdx":I
    .local v17, "taskNdx":I
    :try_start_4
    invoke-virtual {v12, v6, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 335
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Existing task with taskId "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "found"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 336
    :cond_3
    iget v8, v9, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v2, v8, :cond_4

    .line 338
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Task with userId "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " found in "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 342
    :cond_4
    iget-object v8, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v8, v6, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setNextTaskIdForUser(II)V

    .line 343
    const/4 v8, 0x1

    iput-boolean v8, v9, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 344
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v6    # "taskId":I
    :goto_2
    goto :goto_3

    .line 363
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "task":Lcom/android/server/wm/Task;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "event":I
    .end local v17    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :catchall_0
    move-exception v0

    move/from16 v17, v8

    .end local v8    # "taskNdx":I
    .restart local v17    # "taskNdx":I
    goto/16 :goto_6

    .line 358
    .end local v17    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :catch_1
    move-exception v0

    move/from16 v17, v8

    .end local v8    # "taskNdx":I
    .restart local v17    # "taskNdx":I
    goto/16 :goto_5

    .line 348
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v6, "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v9    # "task":Lcom/android/server/wm/Task;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "event":I
    :cond_5
    move-object/from16 v16, v6

    move/from16 v17, v8

    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreTasksForUserLocked: Unable to restore taskFile="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-direct {v1, v10}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v9    # "task":Lcom/android/server/wm/Task;
    :goto_3
    goto :goto_4

    .line 352
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :cond_6
    move-object/from16 v16, v6

    move/from16 v17, v8

    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreTasksForUserLocked: Unknown xml event="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " name="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 319
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :cond_7
    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 356
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    :goto_4
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 357
    .end local v14    # "name":Ljava/lang/String;
    move-object/from16 v12, p2

    move-object/from16 v6, v16

    move/from16 v8, v17

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 358
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "event":I
    :catch_2
    move-exception v0

    goto :goto_5

    .line 316
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    .restart local v15    # "event":I
    :cond_8
    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 363
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .end local v15    # "event":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 364
    if-eqz v13, :cond_a

    .line 366
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_8

    .line 363
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v8

    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    goto :goto_6

    .line 358
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :catch_3
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 359
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    :goto_5
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Error "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failing file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 361
    const/4 v0, 0x1

    .line 363
    .end local v13    # "deleteFile":Z
    .local v0, "deleteFile":Z
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 364
    if-eqz v0, :cond_a

    .line 366
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_8

    .line 363
    .end local v0    # "deleteFile":Z
    .restart local v13    # "deleteFile":Z
    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 364
    if-eqz v13, :cond_9

    .line 366
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 368
    :cond_9
    throw v0

    .line 303
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "deleteFile":Z
    .end local v16    # "recentFiles":[Ljava/io/File;
    .end local v17    # "taskNdx":I
    .restart local v6    # "recentFiles":[Ljava/io/File;
    .restart local v8    # "taskNdx":I
    :catch_4
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 304
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "recentFiles":[Ljava/io/File;
    .restart local v17    # "taskNdx":I
    :goto_7
    const-string v6, "Unexpected task file name"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    nop

    .line 284
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "taskFile":Ljava/io/File;
    :cond_a
    :goto_8
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v6, v16

    .end local v17    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    goto/16 :goto_0

    .end local v16    # "recentFiles":[Ljava/io/File;
    .restart local v6    # "recentFiles":[Ljava/io/File;
    :cond_b
    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 372
    .end local v6    # "recentFiles":[Ljava/io/File;
    .end local v8    # "taskNdx":I
    .restart local v16    # "recentFiles":[Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 376
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    .local v0, "taskNdx":I
    :goto_9
    if-ltz v0, :cond_c

    .line 377
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 378
    .local v6, "task":Lcom/android/server/wm/Task;
    iget v7, v6, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-direct {v1, v7, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 379
    iget v7, v6, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-direct {v1, v7, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 376
    .end local v6    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 382
    .end local v0    # "taskNdx":I
    :cond_c
    new-instance v0, Lcom/android/server/wm/TaskPersister$1;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskPersister$1;-><init>(Lcom/android/server/wm/TaskPersister;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 395
    return-object v3
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v1, p2, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 224
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 185
    return-void
.end method

.method wakeup(Lcom/android/server/wm/Task;Z)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "flush"    # Z

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0

    .line 189
    if-eqz p1, :cond_2

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskPersister$piHtCTZMpbHMTXAk2o7OdlK4Xvc;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$piHtCTZMpbHMTXAk2o7OdlK4Xvc;-><init>(Lcom/android/server/wm/Task;)V

    const-class v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 192
    .local v1, "item":Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    if-eqz v1, :cond_0

    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v2, :cond_0

    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->removeThumbnails(Lcom/android/server/wm/Task;)V

    .line 196
    :cond_0
    if-nez v1, :cond_1

    iget-boolean v2, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    iget-object v4, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v2, v3, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 199
    .end local v1    # "item":Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    :cond_1
    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    sget-object v2, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 208
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    .line 211
    return-void

    .line 208
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .locals 7
    .param p1, "taskIds"    # Landroid/util/SparseBooleanArray;
    .param p2, "userId"    # I

    .line 161
    if-gez p2, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v0

    .line 165
    .local v0, "persistedTaskIdsFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 169
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 170
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "i":I
    :cond_2
    :try_start_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    :goto_1
    goto :goto_2

    .line 178
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 175
    :catch_0
    move-exception v3

    .line 176
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while writing taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 180
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_2
    monitor-exit v1

    .line 181
    return-void

    .line 178
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 179
    nop

    .end local v0    # "persistedTaskIdsFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .end local p1    # "taskIds":Landroid/util/SparseBooleanArray;
    .end local p2    # "userId":I
    throw v3

    .line 180
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "persistedTaskIdsFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/TaskPersister;
    .restart local p1    # "taskIds":Landroid/util/SparseBooleanArray;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
