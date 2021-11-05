.class Lcom/android/server/wm/TaskSnapshotPersister;
.super Ljava/lang/Object;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;,
        Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;
    }
.end annotation


# static fields
.field private static final BITMAP_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final DELAY_MS:J = 0x64L

.field private static final LOW_RES_FILE_POSTFIX:Ljava/lang/String; = "_reduced"

.field private static final MAX_STORE_QUEUE_DEPTH:I = 0x2

.field private static final PROTO_EXTENSION:Ljava/lang/String; = ".proto"

.field private static final QUALITY:I = 0x5f

.field private static final SNAPSHOTS_DIRNAME:Ljava/lang/String; = "snapshots"

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

.field private mEnableLowResSnapshots:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLowResScaleFactor:F

.field private mPaused:Z

.field private final mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPersister:Ljava/lang/Thread;

.field private mQueueIdling:Z

.field private mStarted:Z

.field private final mStoreQueueItems:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mUse16BitFormat:Z

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mWriteQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "resolver"    # Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 261
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister$1;

    const-string v1, "TaskSnapshotPersister"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister$1;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    .line 87
    iput-object p2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    .line 88
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 90
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 92
    .local v0, "highResTaskSnapshotScale":F
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 95
    .local v1, "lowResTaskSnapshotScale":F
    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-ltz v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v1

    if-lez v4, :cond_3

    .line 98
    cmpg-float v4, v0, v2

    if-lez v4, :cond_2

    cmpg-float v3, v3, v0

    if-ltz v3, :cond_2

    .line 101
    cmpg-float v3, v0, v1

    if-lez v3, :cond_1

    .line 105
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 106
    div-float v2, v1, v0

    iput v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    .line 107
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    goto :goto_0

    .line 109
    :cond_0
    iput v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    .line 110
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    .line 113
    :goto_0
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11100f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUse16BitFormat:Z

    .line 115
    return-void

    .line 102
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "High-res scale must be greater than low-res scale"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "High-res scale must be between 0 and 1"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Low-res scale must be between 0 and 1"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/TaskSnapshotPersister;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->deleteSnapshot(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/TaskSnapshotPersister;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 52
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLowResScaleFactor:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/os/UserManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskSnapshotPersister;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->createDirectory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private createDirectory(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 240
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 241
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

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

.method private deleteSnapshot(II)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v0

    .line 246
    .local v0, "protoFile":Ljava/io/File;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v1

    .line 247
    .local v1, "bitmapLowResFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 251
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v2

    .line 252
    .local v2, "bitmapFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 255
    :cond_1
    return-void
.end method

.method private ensureStoreQueueDepthLocked()V
    .locals 3

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    .line 217
    .local v0, "item":Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue is too deep! Purged item with taskid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->access$000(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v0    # "item":Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method private getDirectory(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .line 223
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDirectoryResolver:Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "snapshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onQueuedLocked()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotPersister;->ensureStoreQueueDepthLocked()V

    .line 208
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method enableLowResSnapshots()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mEnableLowResSnapshots:Z

    return v0
.end method

.method getHighResolutionBitmapFile(II)Ljava/io/File;
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getLowResolutionBitmapFile(II)Ljava/io/File;
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 236
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_reduced"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProtoFile(II)Ljava/io/File;
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".proto"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method onTaskRemovedFromRecents(II)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/app/ActivityManager$TaskSnapshot;)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeObsoleteFiles(Landroid/util/ArraySet;[I)V
    .locals 2
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 163
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 165
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[I)V

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->sendToQueueLocked(Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setPaused(Z)V
    .locals 2
    .param p1, "paused"    # Z

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z

    .line 172
    if-nez p1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 175
    :cond_0
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method start()V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mStarted:Z

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersister:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    :cond_0
    return-void
.end method

.method use16BitFormat()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mUse16BitFormat:Z

    return v0
.end method

.method waitForQueueEmpty()V
    .locals 2

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z

    if-eqz v1, :cond_0

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
