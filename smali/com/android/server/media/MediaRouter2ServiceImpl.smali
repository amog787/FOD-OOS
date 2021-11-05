.class Lcom/android/server/media/MediaRouter2ServiceImpl;
.super Ljava/lang/Object;
.source "MediaRouter2ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;,
        Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DUMMY_REQUEST_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "MR2ServiceImpl"


# instance fields
.field private final mAllManagerRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllRouterRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLock:Ljava/lang/Object;

.field final mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    const-string v0, "MR2ServiceImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    .line 91
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 69
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private deselectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 15
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 926
    invoke-interface/range {p2 .. p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 927
    .local v0, "binder":Landroid/os/IBinder;
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 929
    .local v2, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v2, :cond_0

    .line 930
    return-void

    .line 934
    :cond_0
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 935
    move-object/from16 v10, p3

    invoke-virtual {v3, v10}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v3

    .line 937
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    move/from16 v11, p1

    invoke-static {v4, v11}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v12

    .line 938
    .local v12, "uniqueRequestId":J
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v14, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v4, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Pp2d3b-RtNPsI6lvIf9eI7IRits;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Pp2d3b-RtNPsI6lvIf9eI7IRits;

    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 941
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 939
    move-object v7, v3

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 938
    invoke-virtual {v14, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 942
    return-void
.end method

.method private deselectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 9
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 707
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 708
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 710
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_0

    .line 711
    return-void

    .line 714
    :cond_0
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v8, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v2, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$GL5nyZiggrPTBLSqfz_hk4ccNqc;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$GL5nyZiggrPTBLSqfz_hk4ccNqc;

    iget-object v3, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v4, -0x1

    .line 717
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 715
    move-object v5, v1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 714
    invoke-virtual {v8, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 718
    return-void
.end method

.method private disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V
    .locals 2
    .param p1, "userRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1026
    iget v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 1027
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 1028
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    sget-boolean v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Disposed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1035
    :cond_1
    return-void
.end method

.method private getActiveSessionsLocked(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .locals 6
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 782
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 783
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 785
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_0

    .line 786
    const-string v2, "MR2ServiceImpl"

    const-string v3, "getActiveSessionLocked: Ignoring unknown manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 790
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v2, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    iget-object v3, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$200(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRoute2Provider;

    .line 792
    .local v4, "provider":Lcom/android/server/media/MediaRoute2Provider;
    invoke-virtual {v4}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 793
    .end local v4    # "provider":Lcom/android/server/media/MediaRoute2Provider;
    goto :goto_0

    .line 794
    :cond_1
    return-object v2
.end method

.method private getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    .locals 4
    .param p1, "userId"    # I

    .line 1008
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1009
    .local v0, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-nez v0, :cond_0

    .line 1010
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;I)V

    move-object v0, v1

    .line 1011
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1012
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->init()V

    .line 1013
    iget v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    if-ne p1, v1, :cond_0

    .line 1014
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v2, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Pgmx1AV4D4WBNjd6-kTr3nRqEdo;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Pgmx1AV4D4WBNjd6-kTr3nRqEdo;

    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1015
    invoke-static {v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1014
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1018
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$deselectRouteWithManagerLocked$20(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 939
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$deselectRouteWithRouter2Locked$10(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 715
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$getOrCreateUserRecordLocked$24(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 1015
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$600(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$registerManagerLocked$15(Ljava/lang/Object;Landroid/media/IMediaRouter2Manager;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/media/IMediaRouter2Manager;

    .line 819
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1500(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method static synthetic lambda$registerManagerLocked$16(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "x$1"    # Landroid/media/IMediaRouter2Manager;

    .line 826
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1400(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method static synthetic lambda$registerRouter2Locked$2(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 573
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1900(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method

.method static synthetic lambda$releaseSessionWithManagerLocked$23(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;

    .line 997
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$700(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$releaseSessionWithRouter2Locked$14(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;

    .line 770
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$700(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$requestCreateSessionWithManagerLocked$18(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 7
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .param p5, "x$3"    # Landroid/media/RoutingSessionInfo;
    .param p6, "x$4"    # Landroid/media/MediaRoute2Info;

    .line 898
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1200(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$requestCreateSessionWithRouter2Locked$8(Ljava/lang/Object;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .locals 9
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # J
    .param p5, "x$2"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p6, "x$3"    # Landroid/media/RoutingSessionInfo;
    .param p7, "x$4"    # Landroid/media/MediaRoute2Info;
    .param p8, "x$5"    # Landroid/os/Bundle;

    .line 684
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1600(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JJLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$selectRouteWithManagerLocked$19(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 918
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1100(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$selectRouteWithRouter2Locked$9(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 700
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1100(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$setDiscoveryRequestWithRouter2Locked$5(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Ljava/lang/String;
    .param p2, "x$1"    # Ljava/util/List;

    .line 604
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1800(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setDiscoveryRequestWithRouter2Locked$6(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 609
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1700(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$setRouteVolumeWithManagerLocked$17(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Landroid/media/MediaRoute2Info;
    .param p4, "x$2"    # I

    .line 854
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1300(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method static synthetic lambda$setRouteVolumeWithRouter2Locked$7(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Landroid/media/MediaRoute2Info;
    .param p4, "x$2"    # I

    .line 620
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1300(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method static synthetic lambda$setSessionVolumeWithManagerLocked$22(Ljava/lang/Object;JLjava/lang/String;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Ljava/lang/String;
    .param p4, "x$2"    # I

    .line 977
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$800(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$setSessionVolumeWithRouter2Locked$13(Ljava/lang/Object;JLjava/lang/String;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Ljava/lang/String;
    .param p4, "x$2"    # I

    .line 755
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$800(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$switchUser$0(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 520
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$2000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$switchUser$1(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 527
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$600(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method static synthetic lambda$transferToRouteWithManagerLocked$21(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 960
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$900(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$transferToRouteWithRouter2Locked$11(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "x$1"    # I

    .line 734
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$100(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    return-void
.end method

.method static synthetic lambda$transferToRouteWithRouter2Locked$12(Ljava/lang/Object;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 6
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # J
    .param p3, "x$1"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p4, "x$2"    # Ljava/lang/String;
    .param p5, "x$3"    # Landroid/media/MediaRoute2Info;

    .line 739
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$900(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic lambda$unregisterRouter2Locked$3(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Ljava/lang/String;
    .param p2, "x$1"    # Ljava/util/List;

    .line 587
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1800(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$unregisterRouter2Locked$4(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 591
    move-object v0, p0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$1700(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method private registerManagerLocked(Landroid/media/IMediaRouter2Manager;IILjava/lang/String;I)V
    .locals 15
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 799
    move-object v8, p0

    move-object/from16 v9, p1

    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 800
    .local v10, "binder":Landroid/os/IBinder;
    iget-object v0, v8, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 802
    .local v0, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-eqz v0, :cond_0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerManagerLocked: Same manager already exists. packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MR2ServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void

    .line 808
    :cond_0
    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-direct {p0, v12}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v13

    .line 809
    .local v13, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    new-instance v14, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v13

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2Manager;IILjava/lang/String;)V

    .line 811
    .end local v0    # "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v10, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    nop

    .line 816
    iget-object v0, v13, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    iget-object v0, v8, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v0, v13, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v2, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$xzjbJysx3KRHsaEYi_B6XZaYEC4;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$xzjbJysx3KRHsaEYi_B6XZaYEC4;

    iget-object v3, v13, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v2, v3, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 822
    iget-object v0, v13, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 825
    .local v2, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v4, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Eyh_l7NfdhxthjHC_Kro-9iv_RE;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Eyh_l7NfdhxthjHC_Kro-9iv_RE;

    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 826
    invoke-static {v4, v5, v2, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 825
    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 828
    .end local v2    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    goto :goto_0

    .line 829
    :cond_1
    return-void

    .line 812
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 813
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media router manager died prematurely."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private registerRouter2Locked(Landroid/media/IMediaRouter2;IILjava/lang/String;IZZ)V
    .locals 15
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "hasConfigureWifiDisplayPermission"    # Z
    .param p7, "hasModifyAudioRoutingPermission"    # Z

    .line 553
    move-object v10, p0

    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 554
    .local v11, "binder":Landroid/os/IBinder;
    iget-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerRouter2Locked: Same router already exists. packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void

    .line 560
    :cond_0
    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-direct {p0, v13}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v14

    .line 561
    .local v14, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v14

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2;IILjava/lang/String;ZZ)V

    .line 564
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v11, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    nop

    .line 569
    iget-object v0, v14, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v0, v14, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v2, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$q7qwl6hmD458dcvdywa2y7koWbk;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$q7qwl6hmD458dcvdywa2y7koWbk;

    iget-object v3, v14, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 573
    invoke-static {v2, v3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 572
    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    return-void

    .line 565
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 566
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "MediaRouter2 died prematurely."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private releaseSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;

    .line 985
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 986
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 988
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_0

    .line 989
    return-void

    .line 992
    :cond_0
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 993
    invoke-virtual {v2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v2

    .line 995
    .local v2, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget v3, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v3, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v3

    .line 996
    .local v3, "uniqueRequestId":J
    iget-object v5, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v6, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$258F40LB2nLzF4Yteewjo3prwVs;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$258F40LB2nLzF4Yteewjo3prwVs;

    iget-object v7, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v7, v7, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 999
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 997
    invoke-static {v6, v7, v8, v2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 996
    invoke-virtual {v5, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1000
    return-void
.end method

.method private releaseSessionWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .locals 7
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;

    .line 762
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 763
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 765
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_0

    .line 766
    return-void

    .line 769
    :cond_0
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v3, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$5lTLwVvq0pwuL9HyX5bbMG7YMlM;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$5lTLwVvq0pwuL9HyX5bbMG7YMlM;

    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v5, -0x1

    .line 772
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 770
    invoke-static {v3, v4, v5, v1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 769
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 773
    return-void
.end method

.method private requestCreateSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 22
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 862
    move/from16 v1, p1

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 863
    .local v10, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v10, :cond_0

    .line 864
    return-void

    .line 867
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v11

    .line 869
    .local v11, "packageName":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    invoke-virtual {v0, v11}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->findRouterRecordLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v9

    .line 870
    .local v9, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    const/4 v0, 0x0

    if-nez v9, :cond_1

    .line 871
    const-string v3, "MR2ServiceImpl"

    const-string/jumbo v4, "requestCreateSessionWithManagerLocked: Ignoring session creation for unknown router."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :try_start_0
    iget-object v4, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    invoke-interface {v4, v1, v0}, Landroid/media/IMediaRouter2Manager;->notifyRequestFailed(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "requestCreateSessionWithManagerLocked: Failed to notify failure. Manager probably died."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 882
    :cond_1
    iget v3, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v3, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v20

    .line 883
    .local v20, "uniqueRequestId":J
    iget-object v3, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    if-eqz v3, :cond_2

    .line 884
    iget-object v3, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v4, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    iget-object v5, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-wide v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 886
    invoke-static {v5, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v5

    .line 884
    invoke-static {v3, v4, v5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$300(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Landroid/media/IMediaRouter2Manager;II)V

    .line 889
    const/4 v0, 0x0

    iput-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 891
    :cond_2
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    const-wide/16 v14, 0x0

    move-object v12, v0

    move-object v13, v9

    move-wide/from16 v16, v20

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    invoke-direct/range {v12 .. v19}, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    iput-object v0, v10, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 897
    iget-object v0, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v3, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$IidBe_oSaQ9Rvba8-W5oyHv_AO8;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$IidBe_oSaQ9Rvba8-W5oyHv_AO8;

    iget-object v4, v9, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 900
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 898
    move-object v6, v9

    move-object v7, v10

    move-object/from16 v8, p3

    move-object v12, v9

    .end local v9    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .local v12, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 897
    invoke-virtual {v0, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 901
    return-void
.end method

.method private requestCreateSessionWithRouter2Locked(IJLandroid/media/IMediaRouter2;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "requestId"    # I
    .param p2, "managerRequestId"    # J
    .param p4, "router"    # Landroid/media/IMediaRouter2;
    .param p5, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p6, "route"    # Landroid/media/MediaRoute2Info;
    .param p7, "sessionHints"    # Landroid/os/Bundle;

    .line 629
    move/from16 v0, p1

    invoke-interface/range {p4 .. p4}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 630
    .local v1, "binder":Landroid/os/IBinder;
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 632
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v3, :cond_0

    .line 633
    return-void

    .line 636
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    const-string v5, "MR2ServiceImpl"

    if-eqz v4, :cond_6

    .line 637
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 638
    invoke-static/range {p2 .. p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toRequesterId(J)I

    move-result v6

    .line 637
    invoke-virtual {v4, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    move-result-object v4

    .line 639
    .local v4, "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-eqz v4, :cond_5

    iget-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    if-nez v6, :cond_1

    goto :goto_1

    .line 646
    :cond_1
    iget-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 647
    invoke-virtual/range {p5 .. p5}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 646
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 648
    const-string/jumbo v6, "requestCreateSessionWithRouter2Locked: Ignoring unmatched routing session."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v5, v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$100(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 652
    return-void

    .line 654
    :cond_2
    iget-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    .line 655
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    .line 654
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 657
    iget-boolean v6, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v6, :cond_3

    iget-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 658
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 659
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 660
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .end local p6    # "route":Landroid/media/MediaRoute2Info;
    .local v5, "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 662
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    .restart local p6    # "route":Landroid/media/MediaRoute2Info;
    :cond_3
    const-string/jumbo v6, "requestCreateSessionWithRouter2Locked: Ignoring unmatched route."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v5, v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$100(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 666
    return-void

    .line 654
    :cond_4
    move-object/from16 v5, p6

    .line 669
    .end local p6    # "route":Landroid/media/MediaRoute2Info;
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    :goto_0
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 670
    .end local v4    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    move-object v12, v5

    goto :goto_3

    .line 640
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    .restart local v4    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .restart local p6    # "route":Landroid/media/MediaRoute2Info;
    :cond_5
    :goto_1
    const-string/jumbo v6, "requestCreateSessionWithRouter2Locked: Ignoring unknown request."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v5, v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$100(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 644
    return-void

    .line 671
    .end local v4    # "manager":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    :cond_6
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v4, :cond_8

    .line 672
    invoke-virtual/range {p6 .. p6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 673
    invoke-static {v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    .line 672
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MODIFY_AUDIO_ROUTING permission is required to transfer to"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v4, v3, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$100(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 678
    return-void

    .line 672
    :cond_7
    move-object/from16 v6, p6

    goto :goto_2

    .line 671
    :cond_8
    move-object/from16 v6, p6

    .line 682
    :goto_2
    move-object v12, v6

    .end local p6    # "route":Landroid/media/MediaRoute2Info;
    .local v12, "route":Landroid/media/MediaRoute2Info;
    :goto_3
    iget v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    invoke-static {v4, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v13

    .line 683
    .local v13, "uniqueRequestId":J
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v15, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v4, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$003OcZZ5xaDYOonhMlHDzkahjlE;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$003OcZZ5xaDYOonhMlHDzkahjlE;

    iget-object v5, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 686
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 684
    move-object v8, v3

    move-object/from16 v9, p5

    move-object v10, v12

    move-object/from16 v11, p7

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 683
    invoke-virtual {v15, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 688
    return-void
.end method

.method private selectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 15
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 905
    invoke-interface/range {p2 .. p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 906
    .local v0, "binder":Landroid/os/IBinder;
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 908
    .local v2, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v2, :cond_0

    .line 909
    return-void

    .line 913
    :cond_0
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 914
    move-object/from16 v10, p3

    invoke-virtual {v3, v10}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v3

    .line 916
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    move/from16 v11, p1

    invoke-static {v4, v11}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v12

    .line 917
    .local v12, "uniqueRequestId":J
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v14, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v4, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$iZFWzZtlhKLgbRjK00BWRlF-64k;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$iZFWzZtlhKLgbRjK00BWRlF-64k;

    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 920
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 918
    move-object v7, v3

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 917
    invoke-virtual {v14, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 921
    return-void
.end method

.method private selectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 9
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 692
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 693
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 695
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_0

    .line 696
    return-void

    .line 699
    :cond_0
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v8, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v2, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$p451jnGjPANc96LeGhpJtysV0Uc;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$p451jnGjPANc96LeGhpJtysV0Uc;

    iget-object v3, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v4, -0x1

    .line 702
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 700
    move-object v5, v1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 699
    invoke-virtual {v8, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    return-void
.end method

.method private setDiscoveryRequestWithRouter2Locked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteDiscoveryPreference;)V
    .locals 5
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "discoveryRequest"    # Landroid/media/RouteDiscoveryPreference;

    .line 599
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v0, p2}, Landroid/media/RouteDiscoveryPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    return-void

    .line 602
    :cond_0
    iput-object p2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 603
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v1, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$d6bYOwwZwToUI8a8GHVmlm1kg-c;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$d6bYOwwZwToUI8a8GHVmlm1kg-c;

    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v3, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 607
    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v4

    .line 604
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 603
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 608
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v1, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$HxuyDpZFoEiAyb_LAlroiGtZTKk;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$HxuyDpZFoEiAyb_LAlroiGtZTKk;

    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 609
    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 608
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 611
    return-void
.end method

.method private setRouteVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/MediaRoute2Info;I)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .param p4, "volume"    # I

    .line 845
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 846
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 848
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_0

    .line 849
    return-void

    .line 852
    :cond_0
    iget v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v2

    .line 853
    .local v2, "uniqueRequestId":J
    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v5, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$nvFlbQuyFtBS9R4AKhgP_fuBTQk;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$nvFlbQuyFtBS9R4AKhgP_fuBTQk;

    iget-object v6, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 856
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 854
    invoke-static {v5, v6, v7, p3, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 853
    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 857
    return-void
.end method

.method private setRouteVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .locals 7
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "volume"    # I

    .line 615
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 616
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 618
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-eqz v1, :cond_0

    .line 619
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v3, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$RoUmpoNOZj9E9QEH8PRtZNKKUz0;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$RoUmpoNOZj9E9QEH8PRtZNKKUz0;

    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v5, -0x1

    .line 622
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 620
    invoke-static {v3, v4, v5, p2, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 619
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    :cond_0
    return-void
.end method

.method private setSessionVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;I)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 968
    invoke-interface {p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 969
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 971
    .local v1, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v1, :cond_0

    .line 972
    return-void

    .line 975
    :cond_0
    iget v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    invoke-static {v2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v2

    .line 976
    .local v2, "uniqueRequestId":J
    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v5, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$7d0x85YpjWhhNYL1un1btWAq9xE;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$7d0x85YpjWhhNYL1un1btWAq9xE;

    iget-object v6, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 979
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 977
    invoke-static {v5, v6, v7, p3, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 976
    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 980
    return-void
.end method

.method private setSessionVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .locals 7
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "volume"    # I

    .line 747
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 748
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 750
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_0

    .line 751
    return-void

    .line 754
    :cond_0
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v3, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6CAVhzKx1ZDqa56kX6pmPCwaiAg;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6CAVhzKx1ZDqa56kX6pmPCwaiAg;

    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    const-wide/16 v5, -0x1

    .line 757
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 755
    invoke-static {v3, v4, v5, p2, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 754
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 758
    return-void
.end method

.method static toOriginalRequestId(J)I
    .locals 1
    .param p0, "uniqueRequestId"    # J

    .line 1046
    long-to-int v0, p0

    return v0
.end method

.method static toRequesterId(J)I
    .locals 2
    .param p0, "uniqueRequestId"    # J

    .line 1042
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method static toUniqueRequestId(II)J
    .locals 4
    .param p0, "requesterId"    # I
    .param p1, "originalRequestId"    # I

    .line 1038
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private transferToRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 15
    .param p1, "requestId"    # I
    .param p2, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 947
    invoke-interface/range {p2 .. p2}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 948
    .local v0, "binder":Landroid/os/IBinder;
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 950
    .local v2, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v2, :cond_0

    .line 951
    return-void

    .line 955
    :cond_0
    iget-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 956
    move-object/from16 v10, p3

    invoke-virtual {v3, v10}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findRouterWithSessionLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    move-result-object v3

    .line 958
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    move/from16 v11, p1

    invoke-static {v4, v11}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toUniqueRequestId(II)J

    move-result-wide v12

    .line 959
    .local v12, "uniqueRequestId":J
    iget-object v4, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v14, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v4, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$qIBJeDgF933DAIK4s7u4wfp0W5o;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$qIBJeDgF933DAIK4s7u4wfp0W5o;

    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 962
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 960
    move-object v7, v3

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 959
    invoke-virtual {v14, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 963
    return-void
.end method

.method private transferToRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 10
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 722
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 723
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 725
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v1, :cond_0

    .line 726
    return-void

    .line 729
    :cond_0
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 730
    invoke-static {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v8

    .line 731
    .local v8, "defaultRouteId":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    if-nez v2, :cond_1

    .line 732
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 733
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v5, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$v0lzUd5lG9IZWCroURxmaEQL7Qs;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$v0lzUd5lG9IZWCroURxmaEQL7Qs;

    iget-object v6, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 736
    invoke-static {v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->toOriginalRequestId(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 734
    invoke-static {v5, v6, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 733
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 738
    :cond_1
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v9, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v2, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$vWfp72h-jRgh3rS3RGjq0pOS5-k;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$vWfp72h-jRgh3rS3RGjq0pOS5-k;

    iget-object v5, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 741
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 739
    move-object v3, v5

    move-object v5, v1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 738
    invoke-virtual {v9, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 743
    :goto_0
    return-void
.end method

.method private unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V
    .locals 3
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "died"    # Z

    .line 832
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 833
    .local v0, "managerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    if-nez v0, :cond_0

    .line 834
    return-void

    .line 836
    :cond_0
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 837
    .local v1, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->dispose()V

    .line 839
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 840
    return-void
.end method

.method private unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V
    .locals 7
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "died"    # Z

    .line 578
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 579
    .local v0, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v0, :cond_0

    .line 580
    const-string v1, "MR2ServiceImpl"

    const-string v2, "Ignoring unregistering unknown router2"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void

    .line 584
    :cond_0
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 585
    .local v1, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 586
    iget-object v2, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v3, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$4WgsYQWLv4EvtnIJipTULolFxkw;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$4WgsYQWLv4EvtnIJipTULolFxkw;

    iget-object v4, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v4, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    iget-object v5, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 587
    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 586
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 590
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v3, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$jC1rAmXgW1ZIdeyc1iRBGDN_YrE;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$jC1rAmXgW1ZIdeyc1iRBGDN_YrE;

    iget-object v4, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 591
    invoke-static {v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 590
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->dispose()V

    .line 594
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 595
    return-void
.end method


# virtual methods
.method public deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 441
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 442
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    const-string/jumbo v0, "route must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 449
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 450
    :try_start_1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 451
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 454
    nop

    .line 455
    return-void

    .line 451
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    .end local p4    # "route":Landroid/media/MediaRoute2Info;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 453
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    .restart local p4    # "route":Landroid/media/MediaRoute2Info;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 454
    throw v2

    .line 443
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 275
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v0, "route must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 283
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 285
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    nop

    .line 289
    return-void

    .line 285
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    .end local p3    # "route":Landroid/media/MediaRoute2Info;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    .restart local p3    # "route":Landroid/media/MediaRoute2Info;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw v2

    .line 278
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/IMediaRouter2Manager;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 347
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 350
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getActiveSessionsLocked(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    return-object v3

    .line 352
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 355
    throw v2
.end method

.method public getSystemRoutes()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 102
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 103
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 107
    .local v2, "hasModifyAudioRoutingPermission":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 110
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v6

    .line 112
    .local v6, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-eqz v2, :cond_2

    .line 113
    iget-object v7, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 114
    invoke-static {v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/media/SystemMediaRoute2Provider;->getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v7

    .line 115
    .local v7, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    if-eqz v7, :cond_1

    .line 116
    invoke-virtual {v7}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v8

    .local v8, "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    goto :goto_1

    .line 118
    .end local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 120
    .end local v7    # "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    .restart local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :goto_1
    goto :goto_2

    .line 121
    .end local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    .line 122
    .restart local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    iget-object v7, v6, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultRoute()Landroid/media/MediaRoute2Info;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v6    # "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    return-object v5

    .line 124
    .end local v8    # "systemRoutes":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/MediaRoute2Info;>;"
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "uid":I
    .end local v1    # "userId":I
    .end local v2    # "hasModifyAudioRoutingPermission":Z
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    .restart local v0    # "uid":I
    .restart local v1    # "userId":I
    .restart local v2    # "hasModifyAudioRoutingPermission":Z
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    :catchall_1
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    throw v5
.end method

.method public getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
    .locals 11

    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 134
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 135
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 139
    .local v2, "hasModifyAudioRoutingPermission":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 141
    .local v4, "token":J
    const/4 v6, 0x0

    .line 142
    .local v6, "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    move-result-object v8

    .line 145
    .local v8, "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-eqz v2, :cond_2

    .line 146
    iget-object v9, v8, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/media/SystemMediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    move-result-object v9

    .line 147
    .local v9, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 148
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    move-object v6, v3

    .end local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .local v3, "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    goto :goto_1

    .line 150
    .end local v3    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .restart local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    :cond_1
    const-string v3, "MR2ServiceImpl"

    const-string v10, "System provider does not have any session info."

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    .end local v9    # "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :cond_2
    iget-object v3, v8, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->access$000(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)Lcom/android/server/media/SystemMediaRoute2Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/media/SystemMediaRoute2Provider;->getDefaultSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    .end local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .restart local v3    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    move-object v6, v3

    .line 155
    .end local v3    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .end local v8    # "userRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    .restart local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    nop

    .line 158
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    return-object v6

    .line 155
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "uid":I
    .end local v1    # "userId":I
    .end local v2    # "hasModifyAudioRoutingPermission":Z
    .end local v4    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    .end local v6    # "systemSessionInfo":Landroid/media/RoutingSessionInfo;
    .restart local v0    # "uid":I
    .restart local v1    # "userId":I
    .restart local v2    # "hasModifyAudioRoutingPermission":Z
    .restart local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    :catchall_1
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    throw v3
.end method

.method managerDied(Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;)V
    .locals 3
    .param p1, "managerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 540
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V

    .line 542
    monitor-exit v0

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .locals 12
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 359
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 365
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 366
    .local v7, "pid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 368
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 370
    .local v9, "token":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move-object v5, p2

    move v6, v8

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerManagerLocked(Landroid/media/IMediaRouter2Manager;IILjava/lang/String;I)V

    .line 372
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    nop

    .line 376
    return-void

    .line 372
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "uid":I
    .end local v7    # "pid":I
    .end local v8    # "userId":I
    .end local v9    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 374
    .restart local v0    # "uid":I
    .restart local v7    # "pid":I
    .restart local v8    # "userId":I
    .restart local v9    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    throw v1

    .line 361
    .end local v0    # "uid":I
    .end local v7    # "pid":I
    .end local v8    # "userId":I
    .end local v9    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .locals 17
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 163
    move-object/from16 v9, p0

    const-string/jumbo v0, "router must not be null"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 169
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 170
    .local v12, "pid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    .line 171
    .local v13, "userId":I
    iget-object v0, v9, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v2

    .line 174
    .local v7, "hasConfigureWifiDisplayPermission":Z
    :goto_0
    iget-object v0, v9, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, v2

    .line 178
    .local v8, "hasModifyAudioRoutingPermission":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 180
    .local v14, "token":J
    :try_start_0
    iget-object v6, v9, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    move-object/from16 v5, p2

    move-object/from16 v16, v6

    move v6, v13

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerRouter2Locked(Landroid/media/IMediaRouter2;IILjava/lang/String;IZZ)V

    .line 183
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    nop

    .line 187
    return-void

    .line 183
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v7    # "hasConfigureWifiDisplayPermission":Z
    .end local v8    # "hasModifyAudioRoutingPermission":Z
    .end local v11    # "uid":I
    .end local v12    # "pid":I
    .end local v13    # "userId":I
    .end local v14    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    .restart local v7    # "hasConfigureWifiDisplayPermission":Z
    .restart local v8    # "hasModifyAudioRoutingPermission":Z
    .restart local v11    # "uid":I
    .restart local v12    # "pid":I
    .restart local v13    # "userId":I
    .restart local v14    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    throw v0

    .line 165
    .end local v7    # "hasConfigureWifiDisplayPermission":Z
    .end local v8    # "hasModifyAudioRoutingPermission":Z
    .end local v11    # "uid":I
    .end local v12    # "pid":I
    .end local v13    # "userId":I
    .end local v14    # "token":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;

    .line 494
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 495
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 501
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 502
    :try_start_1
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;)V

    .line 503
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    nop

    .line 507
    return-void

    .line 503
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 505
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    throw v2

    .line 496
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .locals 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 326
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 332
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 334
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    nop

    .line 338
    return-void

    .line 334
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    throw v2

    .line 327
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 408
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v0, "oldSession must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 413
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 414
    :try_start_1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 415
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    nop

    .line 419
    return-void

    .line 415
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "oldSession":Landroid/media/RoutingSessionInfo;
    .end local p4    # "route":Landroid/media/MediaRoute2Info;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 417
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "oldSession":Landroid/media/RoutingSessionInfo;
    .restart local p4    # "route":Landroid/media/MediaRoute2Info;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 418
    throw v2
.end method

.method public requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "requestId"    # I
    .param p3, "managerRequestId"    # J
    .param p5, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p6, "route"    # Landroid/media/MediaRoute2Info;
    .param p7, "sessionHints"    # Landroid/os/Bundle;

    .line 240
    const-string/jumbo v0, "router must not be null"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v0, "oldSession must not be null"

    move-object/from16 v10, p5

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v0, "route must not be null"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 246
    .local v12, "token":J
    move-object/from16 v14, p0

    :try_start_0
    iget-object v15, v14, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithRouter2Locked(IJLandroid/media/IMediaRouter2;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    .line 249
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    nop

    .line 253
    return-void

    .line 249
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v12    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "requestId":I
    .end local p3    # "managerRequestId":J
    .end local p5    # "oldSession":Landroid/media/RoutingSessionInfo;
    .end local p6    # "route":Landroid/media/MediaRoute2Info;
    .end local p7    # "sessionHints":Landroid/os/Bundle;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    .restart local v12    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "requestId":I
    .restart local p3    # "managerRequestId":J
    .restart local p5    # "oldSession":Landroid/media/RoutingSessionInfo;
    .restart local p6    # "route":Landroid/media/MediaRoute2Info;
    .restart local p7    # "sessionHints":Landroid/os/Bundle;
    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    throw v0
.end method

.method routerDied(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V
    .locals 3
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 534
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V

    .line 536
    monitor-exit v0

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 423
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const-string/jumbo v0, "route must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 431
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 432
    :try_start_1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 433
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    nop

    .line 437
    return-void

    .line 433
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    .end local p4    # "route":Landroid/media/MediaRoute2Info;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 435
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    .restart local p4    # "route":Landroid/media/MediaRoute2Info;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    throw v2

    .line 425
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 257
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v0, "route must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 265
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 267
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    nop

    .line 271
    return-void

    .line 267
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    .end local p3    # "route":Landroid/media/MediaRoute2Info;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    .restart local p3    # "route":Landroid/media/MediaRoute2Info;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    throw v2

    .line 260
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .locals 6
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 204
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v0, "preference must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 209
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 211
    .local v3, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    if-nez v3, :cond_0

    .line 212
    const-string v4, "MR2ServiceImpl"

    const-string v5, "Ignoring updating discoveryRequest of null routerRecord."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    return-void

    .line 215
    :cond_0
    :try_start_2
    invoke-direct {p0, v3, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setDiscoveryRequestWithRouter2Locked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteDiscoveryPreference;)V

    .line 216
    .end local v3    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    nop

    .line 220
    return-void

    .line 216
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "preference":Landroid/media/RouteDiscoveryPreference;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 218
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "preference":Landroid/media/RouteDiscoveryPreference;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    throw v2
.end method

.method public setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "route"    # Landroid/media/MediaRoute2Info;
    .param p4, "volume"    # I

    .line 393
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    const-string/jumbo v0, "route must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 398
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 399
    :try_start_1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Landroid/media/MediaRoute2Info;I)V

    .line 400
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    nop

    .line 404
    return-void

    .line 400
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "route":Landroid/media/MediaRoute2Info;
    .end local p4    # "volume":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 402
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "route":Landroid/media/MediaRoute2Info;
    .restart local p4    # "volume":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    throw v2
.end method

.method public setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .locals 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "volume"    # I

    .line 224
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 229
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V

    .line 231
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    nop

    .line 235
    return-void

    .line 231
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "route":Landroid/media/MediaRoute2Info;
    .end local p3    # "volume":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "route":Landroid/media/MediaRoute2Info;
    .restart local p3    # "volume":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    throw v2
.end method

.method public setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 477
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 484
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 485
    :try_start_1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;I)V

    .line 486
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    nop

    .line 490
    return-void

    .line 486
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    .end local p4    # "volume":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 488
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    .restart local p4    # "volume":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    throw v2

    .line 479
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .locals 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "volume"    # I

    .line 311
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v0, "uniqueSessionId must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 316
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V

    .line 318
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    nop

    .line 322
    return-void

    .line 318
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    .end local p3    # "volume":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 320
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    .restart local p3    # "volume":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    throw v2
.end method

.method switchUser()V
    .locals 8

    .line 511
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 513
    .local v1, "userId":I
    iget v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    if-eq v2, v1, :cond_1

    .line 514
    iget v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    .line 515
    .local v2, "oldUserId":I
    iput v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentUserId:I

    .line 517
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 518
    .local v3, "oldUser":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-eqz v3, :cond_0

    .line 519
    iget-object v4, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v5, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6Riyrjlduscvk3ao_6ULVEacHqc;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$6Riyrjlduscvk3ao_6ULVEacHqc;

    iget-object v6, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 520
    invoke-static {v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 519
    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 521
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 524
    :cond_0
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 525
    .local v4, "newUser":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    if-eqz v4, :cond_1

    .line 526
    iget-object v5, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    sget-object v6, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$xwrgJ0QIcy6O_xCDFBt_XQNI5DY;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$xwrgJ0QIcy6O_xCDFBt_XQNI5DY;

    iget-object v7, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 527
    invoke-static {v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 526
    invoke-virtual {v5, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    .end local v1    # "userId":I
    .end local v2    # "oldUserId":I
    .end local v3    # "oldUser":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    .end local v4    # "newUser":Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    :cond_1
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;
    .param p2, "requestId"    # I
    .param p3, "uniqueSessionId"    # Ljava/lang/String;
    .param p4, "route"    # Landroid/media/MediaRoute2Info;

    .line 459
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 460
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    const-string/jumbo v0, "route must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 467
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 468
    :try_start_1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithManagerLocked(ILandroid/media/IMediaRouter2Manager;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 469
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    nop

    .line 473
    return-void

    .line 469
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .end local p2    # "requestId":I
    .end local p3    # "uniqueSessionId":Ljava/lang/String;
    .end local p4    # "route":Landroid/media/MediaRoute2Info;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 471
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    .restart local p2    # "requestId":I
    .restart local p3    # "uniqueSessionId":Ljava/lang/String;
    .restart local p4    # "route":Landroid/media/MediaRoute2Info;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    throw v2

    .line 461
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;
    .param p2, "uniqueSessionId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 293
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v0, "route must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 301
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 302
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 303
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    nop

    .line 307
    return-void

    .line 303
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    .end local p2    # "uniqueSessionId":Ljava/lang/String;
    .end local p3    # "route":Landroid/media/MediaRoute2Info;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    .restart local p2    # "uniqueSessionId":Ljava/lang/String;
    .restart local p3    # "route":Landroid/media/MediaRoute2Info;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    throw v2

    .line 296
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uniqueSessionId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterManager(Landroid/media/IMediaRouter2Manager;)V
    .locals 4
    .param p1, "manager"    # Landroid/media/IMediaRouter2Manager;

    .line 379
    const-string/jumbo v0, "manager must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 383
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 384
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V

    .line 385
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    nop

    .line 389
    return-void

    .line 385
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 387
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "manager":Landroid/media/IMediaRouter2Manager;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    throw v2
.end method

.method public unregisterRouter2(Landroid/media/IMediaRouter2;)V
    .locals 4
    .param p1, "router"    # Landroid/media/IMediaRouter2;

    .line 190
    const-string/jumbo v0, "router must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 194
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V

    .line 196
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    nop

    .line 200
    return-void

    .line 196
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .end local p1    # "router":Landroid/media/IMediaRouter2;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaRouter2ServiceImpl;
    .restart local p1    # "router":Landroid/media/IMediaRouter2;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw v2
.end method
