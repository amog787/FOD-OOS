.class Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskWriteQueueItem"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTask:Lcom/android/server/wm/TaskRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    .line 514
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 515
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/TaskRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method private saveToXml(Lcom/android/server/wm/TaskRecord;)Ljava/io/StringWriter;
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 519
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 520
    .local v0, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 521
    .local v1, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 529
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 531
    const-string v2, "task"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 533
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 536
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 538
    return-object v1
.end method


# virtual methods
.method public process()V
    .locals 9

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "stringWriter":Ljava/io/StringWriter;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    .line 547
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 548
    iget-boolean v3, v1, Lcom/android/server/wm/TaskRecord;->inRecents:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 552
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->saveToXml(Lcom/android/server/wm/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 555
    :goto_0
    goto :goto_1

    .line 554
    :catch_0
    move-exception v3

    goto :goto_1

    .line 553
    :catch_1
    move-exception v3

    goto :goto_0

    .line 557
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 558
    if-eqz v0, :cond_3

    .line 560
    const/4 v2, 0x0

    .line 561
    .local v2, "file":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 563
    .local v3, "atomicFile":Landroid/util/AtomicFile;
    :try_start_3
    iget v4, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v4}, Lcom/android/server/wm/TaskPersister;->access$000(I)Ljava/io/File;

    move-result-object v4

    .line 564
    .local v4, "userTasksDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 565
    const-string v5, "TaskPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure creating tasks directory for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " Dropping persistence for task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void

    .line 569
    :cond_1
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 570
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_task.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 571
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v2, v5

    .line 572
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 573
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 574
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 581
    .end local v4    # "userTasksDir":Ljava/io/File;
    goto :goto_2

    .line 575
    :catch_2
    move-exception v4

    .line 576
    .local v4, "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 577
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 579
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for persisting. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TaskPersister"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v2    # "file":Ljava/io/FileOutputStream;
    .end local v3    # "atomicFile":Landroid/util/AtomicFile;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    .line 557
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskWriteQueueItem{task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
