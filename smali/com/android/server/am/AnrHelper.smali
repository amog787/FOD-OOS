.class Lcom/android/server/am/AnrHelper;
.super Ljava/lang/Object;
.source "AnrHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AnrHelper$AnrRecord;,
        Lcom/android/server/am/AnrHelper$AnrConsumerThread;
    }
.end annotation


# static fields
.field private static final EXPIRED_REPORT_TIME_MS:J

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mAnrRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/AnrHelper$AnrRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AnrHelper;

    .line 37
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 37
    sget-wide v0, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AnrHelper;

    .line 37
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AnrHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AnrHelper;

    .line 37
    invoke-direct {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V

    return-void
.end method

.method private startAnrConsumerIfNeeded()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    invoke-virtual {v0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->start()V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 8
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "annotation"    # Ljava/lang/String;

    .line 52
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    .line 55
    return-void
.end method

.method appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V
    .locals 12
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityShortComponentName"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "parentShortComponentName"    # Ljava/lang/String;
    .param p5, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p6, "aboveSystem"    # Z
    .param p7, "annotation"    # Ljava/lang/String;

    .line 60
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/server/am/AnrHelper$AnrRecord;

    move-object v3, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-direct {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
