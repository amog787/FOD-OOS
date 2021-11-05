.class public Lcom/android/server/notification/NotificationHistoryDatabase;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;,
        Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_HISTORY_DELETION:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final DEFAULT_CURRENT_VERSION:I = 0x1

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field private static final HISTORY_RETENTION_DAYS:I = 0x1

.field private static final HISTORY_RETENTION_MS:I = 0x5265c00

.field private static final INVALID_FILE_TIME_MS:J = -0x1L

.field private static final REQUEST_CODE_DELETION:I = 0x1

.field private static final SCHEME_DELETION:Ljava/lang/String; = "delete"

.field private static final TAG:Ljava/lang/String; = "NotiHistoryDatabase"

.field private static final WRITE_BUFFER_INTERVAL_MS:J = 0x124f80L


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field mBuffer:Landroid/app/NotificationHistory;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVersion:I

.field private final mFileCleaupReceiver:Landroid/content/BroadcastReceiver;

.field private final mFileWriteHandler:Landroid/os/Handler;

.field private final mHistoryDir:Ljava/io/File;

.field final mHistoryFiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mVersionFile:Ljava/io/File;

.field private final mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".CLEANUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileWriteHandler"    # Landroid/os/Handler;
    .param p3, "dir"    # Ljava/io/File;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    .line 343
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationHistoryDatabase$1;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileCleaupReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    .line 95
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mAlarmManager:Landroid/app/AlarmManager;

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    .line 97
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    .line 99
    new-instance v0, Ljava/io/File;

    const-string v1, "history"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    .line 101
    new-instance v0, Landroid/app/NotificationHistory;

    invoke-direct {v0}, Landroid/app/NotificationHistory;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 102
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "deletionFilter":Landroid/content/IntentFilter;
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileCleaupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 60
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 60
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationHistoryDatabase;
    .param p1, "x1"    # Landroid/util/AtomicFile;
    .param p2, "x2"    # Landroid/app/NotificationHistory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/io/File;JI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationHistoryDatabase;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationHistoryDatabase;->scheduleDeletion(Ljava/io/File;JI)V

    return-void
.end method

.method static synthetic access$600(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/AtomicFile;
    .param p1, "x1"    # Landroid/app/NotificationHistory;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationHistoryFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .locals 4

    .line 144
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .local v1, "version":I
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .end local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 144
    .end local v1    # "version":I
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 146
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "version":I
    :goto_1
    iget v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_5
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 152
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_6
    iget v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 153
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 155
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 158
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 151
    .restart local v0    # "writer":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "version":I
    .end local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :goto_2
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 155
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "version":I
    .restart local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "NotiHistoryDatabase"

    const-string v3, "Failed to write new version"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    return-void
.end method

.method private deleteFile(Landroid/util/AtomicFile;)V
    .locals 2
    .param p1, "file"    # Landroid/util/AtomicFile;

    .line 275
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiHistoryDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->delete()V

    .line 280
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method private indexFilesLocked()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 128
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 129
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 130
    return-void

    .line 134
    :cond_0
    sget-object v1, Lcom/android/server/notification/-$$Lambda$NotificationHistoryDatabase$DOpPLk6FC4M8AMJ1FHTPtwlmVmQ;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationHistoryDatabase$DOpPLk6FC4M8AMJ1FHTPtwlmVmQ;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 137
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 138
    .local v3, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 137
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method static synthetic lambda$indexFilesLocked$0(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p0, "lhs"    # Ljava/io/File;
    .param p1, "rhs"    # Ljava/io/File;

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 135
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/notification/NotificationHistoryDatabase;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 134
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private static readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .locals 5
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "notificationsOut"    # Landroid/app/NotificationHistory;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationHistoryFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 321
    invoke-static {v0, p1, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 330
    :cond_0
    return-void

    .line 326
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v2, "NotiHistoryDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    nop

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Landroid/util/AtomicFile;
    .end local p1    # "notificationsOut":Landroid/app/NotificationHistory;
    .end local p2    # "filter":Lcom/android/server/notification/NotificationHistoryFilter;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Landroid/util/AtomicFile;
    .restart local p1    # "notificationsOut":Landroid/app/NotificationHistory;
    .restart local p2    # "filter":Lcom/android/server/notification/NotificationHistoryFilter;
    :goto_0
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 329
    :cond_1
    throw v1
.end method

.method private static safeParseLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 337
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private scheduleDeletion(Ljava/io/File;J)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "deletionTime"    # J

    .line 289
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling deletion for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiHistoryDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationHistoryDatabase;->ACTION_HISTORY_DELETION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 295
    const-string v4, "delete"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 296
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 295
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 297
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 298
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 292
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 300
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p3, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 301
    return-void
.end method

.method private scheduleDeletion(Ljava/io/File;JI)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "creationTime"    # J
    .param p4, "retentionDays"    # I

    .line 284
    const v0, 0x5265c00

    mul-int/2addr v0, p4

    int-to-long v0, v0

    add-long/2addr v0, p2

    .line 285
    .local v0, "deletionTime":J
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationHistoryDatabase;->scheduleDeletion(Ljava/io/File;J)V

    .line 286
    return-void
.end method

.method private writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    .locals 2
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "notifications"    # Landroid/app/NotificationHistory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 307
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mCurrentVersion:I

    invoke-static {v0, p2, v1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V

    .line 308
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 313
    throw v1
.end method


# virtual methods
.method public addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/app/NotificationHistory$HistoricalNotification;

    .line 182
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, p1}, Landroid/app/NotificationHistory;->addNewNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 185
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    const-wide/32 v3, 0x124f80

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    :cond_0
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conversationId"    # Ljava/lang/String;

    .line 177
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v0, "rcr":Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method public deleteNotificationHistoryItem(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "postedTime"    # J

    .line 172
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;J)V

    .line 173
    .local v0, "rnr":Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method public disableHistory()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;

    .line 238
    .local v2, "file":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 239
    .end local v2    # "file":Landroid/util/AtomicFile;
    goto :goto_0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 241
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceWriteToDisk()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public init()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "could not create history directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    throw v1

    .line 115
    .restart local p0    # "this":Lcom/android/server/notification/NotificationHistoryDatabase;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "NotiHistoryDatabase"

    const-string v3, "could not create needed files"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->checkVersionAndBuildLocked()V

    .line 121
    invoke-direct {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->indexFilesLocked()V

    .line 122
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->prune(IJ)V

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V

    .line 168
    .local v0, "rpr":Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method prune(IJ)V
    .locals 9
    .param p1, "retentionDays"    # I
    .param p2, "currentTimeMillis"    # J

    .line 249
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 251
    .local v1, "retentionBoundary":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 252
    const/4 v2, 0x5

    mul-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 254
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 255
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 256
    .local v3, "currentOldestFile":Landroid/util/AtomicFile;
    nop

    .line 257
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 258
    .local v4, "creationTime":J
    sget-boolean v6, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 259
    const-string v6, "NotiHistoryDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " created on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 264
    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteFile(Landroid/util/AtomicFile;)V

    goto :goto_1

    .line 267
    :cond_1
    nop

    .line 268
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    .line 267
    invoke-direct {p0, v6, v4, v5, p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->scheduleDeletion(Ljava/io/File;JI)V

    .line 254
    .end local v3    # "currentOldestFile":Landroid/util/AtomicFile;
    .end local v4    # "creationTime":J
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 271
    .end local v1    # "retentionBoundary":Ljava/util/GregorianCalendar;
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readNotificationHistory()Landroid/app/NotificationHistory;
    .locals 8

    .line 192
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    .line 194
    .local v1, "notifications":Landroid/app/NotificationHistory;
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v1, v2}, Landroid/app/NotificationHistory;->addNotificationsToWrite(Landroid/app/NotificationHistory;)V

    .line 196
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .local v3, "file":Landroid/util/AtomicFile;
    :try_start_1
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 199
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 198
    invoke-static {v3, v1, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    goto :goto_1

    .line 200
    :catch_0
    move-exception v4

    .line 201
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "NotiHistoryDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 205
    :cond_0
    monitor-exit v0

    return-object v1

    .line 206
    .end local v1    # "notifications":Landroid/app/NotificationHistory;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public readNotificationHistory(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationHistory;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "maxNotifications"    # I

    .line 211
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    .line 214
    .local v1, "notifications":Landroid/app/NotificationHistory;
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .local v3, "file":Landroid/util/AtomicFile;
    :try_start_1
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 218
    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setPackage(Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    move-result-object v4

    .line 219
    invoke-virtual {v4, p1, p2}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    move-result-object v4

    .line 220
    invoke-virtual {v4, p3}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->setMaxNotifications(I)Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 216
    invoke-static {v3, v1, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 222
    invoke-virtual {v1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p3, v4, :cond_0

    .line 224
    goto :goto_2

    .line 228
    :cond_0
    goto :goto_1

    .line 226
    :catch_0
    move-exception v4

    .line 227
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "NotiHistoryDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 231
    :cond_1
    :goto_2
    monitor-exit v0

    return-object v1

    .line 232
    .end local v1    # "notifications":Landroid/app/NotificationHistory;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
