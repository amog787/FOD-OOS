.class public Lcom/android/server/usage/AppTimeLimitController;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppTimeLimitController$MyHandler;,
        Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;,
        Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$UsageGroup;,
        Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;,
        Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;,
        Lcom/android/server/usage/AppTimeLimitController$UserData;,
        Lcom/android/server/usage/AppTimeLimitController$Lock;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_OBSERVER_PER_UID:J = 0x3e8L

.field private static final ONE:Ljava/lang/Integer;

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "AppTimeLimitController"


# instance fields
.field private final mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

.field private mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

.field private final mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

.field private final mObserverApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>(Lcom/android/server/usage/AppTimeLimitController$1;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    .line 582
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;-><init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 583
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    .line 584
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .param p2, "x2"    # J

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;

    .line 47
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelInformSessionEndListener(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p1, "x1"    # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .param p2, "x2"    # J

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postInformSessionEndListenerLocked(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/AppTimeLimitController;

    .line 47
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    return-object v0
.end method

.method private cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 1008
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1009
    return-void
.end method

.method private cancelInformSessionEndListener(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 997
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 998
    return-void
.end method

.method private getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .locals 3
    .param p1, "uid"    # I

    .line 700
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 701
    .local v0, "appData":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    if-nez v0, :cond_0

    .line 702
    new-instance v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V

    move-object v0, v1

    .line 703
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    :cond_0
    return-object v0
.end method

.method private getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;
    .locals 3
    .param p1, "userId"    # I

    .line 689
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 690
    .local v0, "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    if-nez v0, :cond_0

    .line 691
    new-instance v1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController$1;)V

    move-object v0, v1

    .line 692
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    :cond_0
    return-object v0
.end method

.method private noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .locals 4
    .param p1, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p2, "group"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .param p3, "currentTimeMs"    # J

    .line 722
    iget-object v0, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length v0, v0

    .line 723
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 724
    iget-object v2, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    iget-object v3, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    invoke-virtual {p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(J)V

    .line 723
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 729
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .locals 2
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    .param p2, "timeout"    # J

    .line 1002
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1004
    return-void
.end method

.method private postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 984
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 986
    return-void
.end method

.method private postInformSessionEndListenerLocked(Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;J)V
    .locals 2
    .param p1, "group"    # Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .param p2, "timeout"    # J

    .line 990
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 991
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 990
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 993
    return-void
.end method


# virtual methods
.method public addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .locals 20
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "observed"    # [Ljava/lang/String;
    .param p4, "timeLimit"    # J
    .param p6, "timeUsed"    # J
    .param p8, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "userId"    # I

    .line 846
    move-object/from16 v12, p0

    move/from16 v13, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_3

    .line 849
    iget-object v14, v12, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v14

    .line 850
    move/from16 v15, p9

    :try_start_0
    invoke-direct {v12, v15}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 851
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    move-object v11, v1

    .line 852
    .local v11, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v1, v11, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    move-object/from16 v16, v1

    .line 853
    .local v16, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    if-eqz v16, :cond_0

    .line 855
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 858
    :cond_0
    iget-object v1, v11, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v9, v1

    .line 859
    .local v9, "observerIdCount":I
    int-to-long v1, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimitObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 863
    new-instance v17, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 864
    cmp-long v1, p6, p4

    if-ltz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v18, v1

    goto :goto_0

    :cond_1
    move-object/from16 v18, p8

    :goto_0
    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v11

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v19, v9

    .end local v9    # "observerIdCount":I
    .local v19, "observerIdCount":I
    move-wide/from16 v9, p6

    move-object v15, v11

    .end local v11    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .local v15, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V

    move-object/from16 v1, v17

    .line 865
    .end local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .local v1, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    iget-object v2, v15, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 871
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 873
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v15    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v19    # "observerIdCount":I
    monitor-exit v14

    .line 874
    return-void

    .line 860
    .restart local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v9    # "observerIdCount":I
    .restart local v11    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    :cond_2
    move/from16 v19, v9

    move-object v15, v11

    .end local v9    # "observerIdCount":I
    .end local v11    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v15    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v19    # "observerIdCount":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many app usage observers added by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, p1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1    # "requestingUid":I
    .end local p2    # "observerId":I
    .end local p3    # "observed":[Ljava/lang/String;
    .end local p4    # "timeLimit":J
    .end local p6    # "timeUsed":J
    .end local p8    # "callbackIntent":Landroid/app/PendingIntent;
    .end local p9    # "userId":I
    throw v1

    .line 873
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v15    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v19    # "observerIdCount":I
    .restart local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1    # "requestingUid":I
    .restart local p2    # "observerId":I
    .restart local p3    # "observed":[Ljava/lang/String;
    .restart local p4    # "timeLimit":J
    .restart local p6    # "timeUsed":J
    .restart local p8    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p9    # "userId":I
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    :goto_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 847
    :cond_3
    move/from16 v3, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .locals 18
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "observed"    # [Ljava/lang/String;
    .param p4, "timeLimit"    # J
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p7, "userId"    # I

    .line 737
    move-object/from16 v10, p0

    move/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_2

    .line 740
    iget-object v12, v10, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v12

    .line 741
    move/from16 v13, p7

    :try_start_0
    invoke-direct {v10, v13}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 742
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    move-object v14, v1

    .line 743
    .local v14, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v1, v14, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move-object v15, v1

    .line 744
    .local v15, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    if-eqz v15, :cond_0

    .line 746
    invoke-virtual {v15}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 749
    :cond_0
    iget-object v1, v14, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v9, v1

    .line 750
    .local v9, "observerIdCount":I
    int-to-long v1, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageObserverPerUidLimit()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 754
    new-instance v16, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v14

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v17, v9

    .end local v9    # "observerIdCount":I
    .local v17, "observerIdCount":I
    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    move-object/from16 v1, v16

    .line 756
    .end local v15    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .local v1, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    iget-object v2, v14, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 762
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 764
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .end local v14    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v17    # "observerIdCount":I
    monitor-exit v12

    .line 765
    return-void

    .line 751
    .restart local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v9    # "observerIdCount":I
    .restart local v14    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v15    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    :cond_1
    move/from16 v17, v9

    .end local v9    # "observerIdCount":I
    .restart local v17    # "observerIdCount":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many app usage observers added by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v3, p1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1    # "requestingUid":I
    .end local p2    # "observerId":I
    .end local p3    # "observed":[Ljava/lang/String;
    .end local p4    # "timeLimit":J
    .end local p6    # "callbackIntent":Landroid/app/PendingIntent;
    .end local p7    # "userId":I
    throw v1

    .line 764
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v14    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v15    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .end local v17    # "observerIdCount":I
    .restart local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1    # "requestingUid":I
    .restart local p2    # "observerId":I
    .restart local p3    # "observed":[Ljava/lang/String;
    .restart local p4    # "timeLimit":J
    .restart local p6    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p7    # "userId":I
    :catchall_0
    move-exception v0

    move/from16 v3, p1

    :goto_0
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    .line 738
    :cond_2
    move/from16 v3, p1

    move/from16 v13, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 19
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "observed"    # [Ljava/lang/String;
    .param p4, "timeLimit"    # J
    .param p6, "sessionThresholdTime"    # J
    .param p8, "limitReachedCallbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "sessionEndCallbackIntent"    # Landroid/app/PendingIntent;
    .param p10, "userId"    # I

    .line 794
    move-object/from16 v13, p0

    move/from16 v14, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_2

    .line 797
    iget-object v15, v13, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v15

    .line 798
    move/from16 v12, p10

    :try_start_0
    invoke-direct {v13, v12}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    .line 799
    .local v0, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    move-object v10, v1

    .line 800
    .local v10, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v1, v10, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    move-object/from16 v16, v1

    .line 801
    .local v16, "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    if-eqz v16, :cond_0

    .line 803
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 806
    :cond_0
    iget-object v1, v10, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v11, v1

    .line 807
    .local v11, "observerIdCount":I
    int-to-long v1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUsageSessionObserverPerUidLimit()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 811
    :try_start_1
    new-instance v17, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v10

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p8

    move-object v13, v10

    move/from16 v18, v11

    .end local v10    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v11    # "observerIdCount":I
    .local v13, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .local v18, "observerIdCount":I
    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    :try_start_2
    invoke-direct/range {v1 .. v12}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V

    move-object/from16 v1, v17

    .line 813
    .end local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .local v1, "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    iget-object v2, v13, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 815
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v4, p0

    move-object v5, v13

    .end local v13    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .local v5, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    :try_start_3
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 817
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v1    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .end local v5    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v18    # "observerIdCount":I
    monitor-exit v15

    .line 818
    return-void

    .line 817
    :catchall_0
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v13

    :goto_0
    move/from16 v3, p1

    goto :goto_1

    .line 808
    .restart local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v10    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v11    # "observerIdCount":I
    .restart local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    :cond_1
    move-object v5, v10

    move/from16 v18, v11

    move-object v4, v13

    .end local v10    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v11    # "observerIdCount":I
    .restart local v5    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .restart local v18    # "observerIdCount":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many app usage observers added by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v3, p1

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1    # "requestingUid":I
    .end local p2    # "observerId":I
    .end local p3    # "observed":[Ljava/lang/String;
    .end local p4    # "timeLimit":J
    .end local p6    # "sessionThresholdTime":J
    .end local p8    # "limitReachedCallbackIntent":Landroid/app/PendingIntent;
    .end local p9    # "sessionEndCallbackIntent":Landroid/app/PendingIntent;
    .end local p10    # "userId":I
    throw v1

    .line 817
    .end local v0    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v5    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v16    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .end local v18    # "observerIdCount":I
    .restart local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1    # "requestingUid":I
    .restart local p2    # "observerId":I
    .restart local p3    # "observed":[Ljava/lang/String;
    .restart local p4    # "timeLimit":J
    .restart local p6    # "sessionThresholdTime":J
    .restart local p8    # "limitReachedCallbackIntent":Landroid/app/PendingIntent;
    .restart local p9    # "sessionEndCallbackIntent":Landroid/app/PendingIntent;
    .restart local p10    # "userId":I
    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v3, p1

    move-object v4, v13

    :goto_1
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_1

    .line 795
    :cond_2
    move/from16 v3, p1

    move-object v4, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1012
    if-eqz p1, :cond_3

    .line 1013
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 1014
    aget-object v1, p1, v0

    .line 1015
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "actives"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1016
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v2

    .line 1017
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1018
    .local v3, "nUsers":I
    const/4 v4, 0x0

    .local v4, "user":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 1019
    iget-object v5, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 1020
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/AppTimeLimitController$UserData;

    iget-object v5, v5, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    .line 1021
    .local v5, "actives":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1022
    .local v6, "nActive":I
    const/4 v7, 0x0

    .local v7, "active":I
    :goto_2
    if-ge v7, v6, :cond_0

    .line 1023
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1018
    .end local v5    # "actives":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "nActive":I
    .end local v7    # "active":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1026
    .end local v3    # "nUsers":I
    .end local v4    # "user":I
    :cond_1
    monitor-exit v2

    .line 1027
    return-void

    .line 1026
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1013
    .end local v1    # "arg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1032
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 1033
    :try_start_1
    const-string v1, "\n  App Time Limits"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1035
    .local v1, "nUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_4

    .line 1036
    const-string v3, "   User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1037
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UserData;

    invoke-virtual {v3, p2}, Lcom/android/server/usage/AppTimeLimitController$UserData;->dump(Ljava/io/PrintWriter;)V

    .line 1035
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1039
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1040
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1041
    .local v2, "nObserverApps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_5

    .line 1042
    const-string v4, "   Observer App "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    iget-object v4, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    invoke-virtual {v4, p2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->dump(Ljava/io/PrintWriter;)V

    .line 1041
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1045
    .end local v1    # "nUsers":I
    .end local v2    # "nObserverApps":I
    .end local v3    # "i":I
    :cond_5
    monitor-exit v0

    .line 1046
    return-void

    .line 1045
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method getAppUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .locals 2
    .param p1, "observerAppUid"    # I
    .param p2, "observerId"    # I

    .line 618
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 619
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    monitor-exit v0

    return-object v1

    .line 620
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 647
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 648
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 649
    .local v1, "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 650
    monitor-exit v0

    return-object v2

    .line 653
    :cond_0
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 654
    .local v3, "usageGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    .line 658
    :cond_1
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 659
    .local v4, "usageLimitGroups":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 660
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz v6, :cond_3

    .line 661
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 662
    .local v6, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget-object v8, v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserved:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 663
    iget-object v8, v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->mObserved:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 664
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 665
    goto :goto_2

    .line 662
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 659
    .end local v6    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v7    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 670
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 671
    monitor-exit v0

    return-object v2

    .line 674
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 675
    .local v2, "smallestGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 676
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 677
    .local v6, "otherGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    invoke-virtual {v6}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    .line 678
    move-object v2, v6

    .line 675
    .end local v6    # "otherGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 681
    .end local v5    # "i":I
    :cond_7
    new-instance v5, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    .line 682
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getTotaUsageLimit()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;-><init>(JJ)V

    monitor-exit v0

    .line 681
    return-object v5

    .line 655
    .end local v2    # "smallestGroup":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .end local v4    # "usageLimitGroups":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;>;"
    :cond_8
    :goto_4
    monitor-exit v0

    return-object v2

    .line 683
    .end local v1    # "userData":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v3    # "usageGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAppUsageLimitGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .locals 2
    .param p1, "observerAppUid"    # I
    .param p2, "observerId"    # I

    .line 633
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 634
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    monitor-exit v0

    return-object v1

    .line 636
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getAppUsageLimitObserverPerUidLimit()J
    .locals 2

    .line 607
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getAppUsageObserverPerUidLimit()J
    .locals 2

    .line 595
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getMinTimeLimit()J
    .locals 2

    .line 613
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method getSessionUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .locals 2
    .param p1, "observerAppUid"    # I
    .param p2, "observerId"    # I

    .line 625
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 626
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    monitor-exit v0

    return-object v1

    .line 628
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getUptimeMillis()J
    .locals 2

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getUsageSessionObserverPerUidLimit()J
    .locals 2

    .line 601
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public noteUsageStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 939
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V

    .line 940
    return-void
.end method

.method public noteUsageStart(Ljava/lang/String;IJ)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeAgoMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 905
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 908
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 909
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 910
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 911
    .local v3, "count":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 913
    iget-object v4, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 914
    monitor-exit v0

    return-void

    .line 917
    .end local v3    # "count":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v3

    .line 919
    .local v3, "currentTime":J
    iget-object v5, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    sget-object v6, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v5, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 922
    .local v5, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    if-nez v5, :cond_1

    monitor-exit v0

    return-void

    .line 924
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 925
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 926
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 927
    .local v8, "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    sub-long v9, v3, p3

    invoke-virtual {v8, v9, v10, v3, v4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    .line 925
    .end local v8    # "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 929
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2    # "index":I
    .end local v3    # "currentTime":J
    .end local v5    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_2
    monitor-exit v0

    .line 930
    return-void

    .line 929
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteUsageStop(Ljava/lang/String;I)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 950
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 953
    .local v1, "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 954
    .local v2, "index":I
    if-ltz v2, :cond_3

    .line 959
    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 960
    .local v3, "count":Ljava/lang/Integer;
    sget-object v4, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 962
    iget-object v4, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 963
    monitor-exit v0

    return-void

    .line 966
    :cond_0
    iget-object v4, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 967
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v4

    .line 970
    .local v4, "currentTime":J
    iget-object v6, v1, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 971
    .local v6, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    if-nez v6, :cond_1

    monitor-exit v0

    return-void

    .line 973
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 974
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 975
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 976
    .local v9, "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    invoke-virtual {v9, v4, v5}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    .line 974
    .end local v9    # "group":Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 979
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2    # "index":I
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v4    # "currentTime":J
    .end local v6    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usage/AppTimeLimitController$UsageGroup;>;"
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_2
    monitor-exit v0

    .line 980
    return-void

    .line 955
    .restart local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .restart local v2    # "index":I
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop usage for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", not in use"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v3

    .line 979
    .end local v1    # "user":Lcom/android/server/usage/AppTimeLimitController$UserData;
    .end local v2    # "index":I
    .restart local p0    # "this":Lcom/android/server/usage/AppTimeLimitController;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 710
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 713
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAppUsageLimitObserver(III)V
    .locals 3
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 885
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 886
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    .line 887
    .local v1, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 888
    .local v2, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    if-eqz v2, :cond_0

    .line 890
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    .line 892
    .end local v1    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v2    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    :cond_0
    monitor-exit v0

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAppUsageObserver(III)V
    .locals 3
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 775
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 776
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    .line 777
    .local v1, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    .line 778
    .local v2, "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    if-eqz v2, :cond_0

    .line 780
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 782
    .end local v1    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v2    # "group":Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    :cond_0
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUsageSessionObserver(III)V
    .locals 3
    .param p1, "requestingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 829
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 830
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v1

    .line 831
    .local v1, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    iget-object v2, v1, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    .line 832
    .local v2, "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    if-eqz v2, :cond_0

    .line 834
    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    .line 836
    .end local v1    # "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .end local v2    # "group":Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    :cond_0
    monitor-exit v0

    .line 837
    return-void

    .line 836
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
