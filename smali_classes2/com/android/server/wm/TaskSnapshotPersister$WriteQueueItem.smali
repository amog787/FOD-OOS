.class abstract Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.super Ljava/lang/Object;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "WriteQueueItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p2, "x1"    # Lcom/android/server/wm/TaskSnapshotPersister$1;

    .line 304
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    return-void
.end method


# virtual methods
.method isReady()Z
    .locals 1

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method onDequeuedLocked()V
    .locals 0

    .line 324
    return-void
.end method

.method onQueuedLocked()V
    .locals 0

    .line 318
    return-void
.end method

.method abstract write()V
.end method
