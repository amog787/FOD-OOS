.class public Lcom/android/server/am/BroadcastDispatcher;
.super Ljava/lang/Object;
.source "BroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastDispatcher$Dumper;,
        Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastDispatcher"


# instance fields
.field private mAlarm:Lcom/android/server/AlarmManagerInternal;

.field private final mAlarmBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

.field final mAlarmUids:Landroid/util/SparseIntArray;

.field private final mConstants:Lcom/android/server/am/BroadcastConstants;

.field private mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

.field private final mDeferredBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueue:Lcom/android/server/am/BroadcastQueue;

.field private mRecheckScheduled:Z

.field final mScheduleRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastConstants;Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 1
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "constants"    # Lcom/android/server/am/BroadcastConstants;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "lock"    # Ljava/lang/Object;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    .line 165
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$1;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    .line 211
    new-instance v0, Lcom/android/server/am/BroadcastDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastDispatcher$2;-><init>(Lcom/android/server/am/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    .line 240
    iput-object p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    .line 241
    iput-object p2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 242
    iput-object p3, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    .line 243
    iput-object p4, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BroadcastDispatcher;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BroadcastDispatcher;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BroadcastDispatcher;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/BroadcastDispatcher;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BroadcastDispatcher;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 41
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/BroadcastDispatcher;)Lcom/android/server/am/BroadcastQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BroadcastDispatcher;

    .line 41
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/am/BroadcastDispatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BroadcastDispatcher;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    return p1
.end method

.method private calculateDeferral(J)J
    .locals 4
    .param p1, "previous"    # J

    .line 717
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_FLOOR:J

    long-to-float v2, p1

    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->DEFERRAL_DECAY_FACTOR:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 404
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .local p3, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 405
    .local v0, "didSomething":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 406
    .local v2, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v3

    or-int/2addr v0, v3

    .line 408
    if-nez p5, :cond_0

    if-eqz v0, :cond_0

    .line 409
    const/4 v1, 0x1

    return v1

    .line 411
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    goto :goto_0

    .line 412
    :cond_1
    return v0
.end method

.method private cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 9
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 390
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    .local p3, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 391
    .local v0, "didSomething":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 392
    .local v2, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v4, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 394
    if-nez p5, :cond_0

    if-eqz v0, :cond_0

    .line 395
    const/4 v1, 0x1

    return v1

    .line 397
    .end local v2    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_0
    goto :goto_0

    .line 398
    :cond_1
    return v0
.end method

.method private findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .locals 2
    .param p1, "uid"    # I

    .line 652
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    .line 654
    .local v0, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    if-nez v0, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    .line 657
    :cond_0
    return-object v0
.end method

.method private static findUidLocked(ILjava/util/ArrayList;)Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .locals 4
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;"
        }
    .end annotation

    .line 676
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 677
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 678
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 679
    .local v2, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    if-ne p0, v3, :cond_0

    .line 680
    return-object v2

    .line 677
    .end local v2    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V
    .locals 6
    .param p1, "d"    # Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ")V"
        }
    .end annotation

    .line 703
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 704
    .local v0, "numElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 705
    iget-wide v2, p1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-wide v4, v4, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 706
    goto :goto_1

    .line 704
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 710
    return-void
.end method

.method private static isDeferralsListEmpty(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)Z"
        }
    .end annotation

    .line 278
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-static {p0}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static pendingInDeferralsList(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)I"
        }
    .end annotation

    .line 269
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    const/4 v0, 0x0

    .line 270
    .local v0, "pending":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 271
    .local v1, "numEntries":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 272
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method private static popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 691
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 692
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    :goto_0
    return-object v0
.end method

.method private removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z
    .locals 2
    .param p1, "d"    # Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 665
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 666
    .local v0, "didRemove":Z
    if-nez v0, :cond_0

    .line 667
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 669
    :cond_0
    return v0
.end method

.method private replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .locals 5
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "typeForLogging"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 346
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 350
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 351
    .local v2, "old":Lcom/android/server/am/BroadcastRecord;
    iget v3, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_0

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** Replacing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BroadcastDispatcher"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    iput-boolean v3, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 358
    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-object v2

    .line 349
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    .end local v2    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .locals 4
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "typeForLogging"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;",
            "Lcom/android/server/am/BroadcastRecord;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/BroadcastRecord;"
        }
    .end annotation

    .line 332
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 333
    .local v0, "numEntries":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 334
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 335
    .local v2, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 336
    .local v3, "old":Lcom/android/server/am/BroadcastRecord;
    if-eqz v3, :cond_0

    .line 337
    return-object v3

    .line 333
    .end local v2    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    .end local v3    # "old":Lcom/android/server/am/BroadcastRecord;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static zeroDeferralTimes(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastDispatcher$Deferrals;",
            ">;)V"
        }
    .end annotation

    .line 636
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastDispatcher$Deferrals;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 637
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 638
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 640
    .local v2, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    iput-wide v3, v2, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 637
    .end local v2    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addDeferredBroadcast(ILcom/android/server/am/BroadcastRecord;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "br"    # Lcom/android/server/am/BroadcastRecord;

    .line 588
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueuing deferred broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastDispatcher"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v1

    .line 593
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    if-nez v1, :cond_1

    .line 594
    const-string v2, "BroadcastDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding deferred broadcast but not tracking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_1
    if-nez p2, :cond_2

    .line 597
    const-string v2, "BroadcastDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deferring null broadcast to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->deferred:Z

    .line 600
    invoke-virtual {v1, p2}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->add(Lcom/android/server/am/BroadcastRecord;)V

    .line 603
    .end local v1    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :goto_0
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelDeferralsLocked()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/am/BroadcastDispatcher;->zeroDeferralTimes(Ljava/util/ArrayList;)V

    .line 633
    return-void
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 369
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher;->cleanupBroadcastListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v0

    .line 371
    .local v0, "didSomething":Z
    if-nez p4, :cond_0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 375
    :cond_1
    if-nez p4, :cond_2

    if-nez v0, :cond_3

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BroadcastDispatcher;->cleanupDeferralsListDisabledReceiversLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 379
    :cond_3
    if-nez p4, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_5

    .line 380
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 384
    :cond_5
    return v0
.end method

.method public describeStateLocked()Ljava/lang/String;
    .locals 4

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 287
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "1 in flight, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, " ordered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    .line 293
    .local v1, "n":I
    const-string v2, ", "

    if-lez v1, :cond_1

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    const-string v3, " deferrals in alarm recipients"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/server/am/BroadcastDispatcher;->pendingInDeferralsList(Ljava/util/ArrayList;)I

    move-result v1

    .line 299
    if-lez v1, :cond_2

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    const-string v2, " deferred"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 419
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 423
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 424
    .end local v1    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 426
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 427
    .end local v1    # "br":Lcom/android/server/am/BroadcastRecord;
    goto :goto_1

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 429
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 430
    .end local v1    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    goto :goto_2

    .line 431
    :cond_3
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)Z
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "queueName"    # Ljava/lang/String;
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 725
    new-instance v6, Lcom/android/server/am/BroadcastDispatcher$Dumper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BroadcastDispatcher$Dumper;-><init>(Lcom/android/server/am/BroadcastDispatcher;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    .line 726
    .local v0, "dumper":Lcom/android/server/am/BroadcastDispatcher$Dumper;
    const/4 v1, 0x0

    .line 728
    .local v1, "printed":Z
    const-string v2, "Currently in flight"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 729
    const-string v2, "In-Flight Ordered Broadcast"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v2, :cond_0

    .line 731
    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_0

    .line 733
    :cond_0
    const-string v2, "  (null)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    :goto_0
    const-string v2, "Active ordered broadcasts"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 737
    const-string v2, "Active Ordered Broadcast"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 738
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 739
    .local v3, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    invoke-virtual {v3, v0}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    .line 740
    .end local v3    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    goto :goto_1

    .line 741
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result v2

    or-int/2addr v1, v2

    .line 743
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    .line 744
    .local v3, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->dump(Lcom/android/server/am/BroadcastRecord;)V

    .line 745
    .end local v3    # "br":Lcom/android/server/am/BroadcastRecord;
    goto :goto_2

    .line 746
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result v2

    or-int/2addr v1, v2

    .line 748
    const-string v2, "Deferred ordered broadcasts"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setHeading(Ljava/lang/String;)V

    .line 749
    const-string v2, "Deferred Ordered Broadcast"

    invoke-virtual {v0, v2}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->setLabel(Ljava/lang/String;)V

    .line 750
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 751
    .local v3, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    invoke-virtual {v3, v0}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->dumpLocked(Lcom/android/server/am/BroadcastDispatcher$Dumper;)V

    .line 752
    .end local v3    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    goto :goto_3

    .line 753
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastDispatcher$Dumper;->didPrint()Z

    move-result v2

    or-int/2addr v1, v2

    .line 755
    return v1
.end method

.method enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 311
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public getActiveBroadcastLocked()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    return-object v0
.end method

.method public getNextBroadcastLocked(J)Lcom/android/server/am/BroadcastRecord;
    .locals 10
    .param p1, "now"    # J

    .line 449
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    .line 450
    return-object v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 455
    .local v0, "someQueued":Z
    const/4 v1, 0x0

    .line 456
    .local v1, "next":Lcom/android/server/am/BroadcastRecord;
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "BroadcastDispatcher"

    if-nez v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/am/BroadcastDispatcher;->popLocked(Ljava/util/ArrayList;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 458
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next broadcast from alarm targets: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 469
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 470
    iget-object v5, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 471
    .local v5, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v6, p1, v6

    if-gez v6, :cond_2

    if-eqz v0, :cond_2

    .line 476
    goto :goto_1

    .line 479
    :cond_2
    iget-object v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 480
    iget-object v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 483
    iget-object v6, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    iget-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/BroadcastDispatcher;->calculateDeferral(J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 485
    iget-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    iget-wide v8, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    .line 486
    iget-object v6, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    .line 487
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v6, :cond_4

    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next broadcast from deferrals "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", deferUntil now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 469
    .end local v5    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 496
    .end local v4    # "i":I
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 497
    iget-object v4, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 498
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_5

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next broadcast from main queue: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_5
    iput-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 504
    return-object v1
.end method

.method public isDeferringLocked(I)Z
    .locals 6
    .param p1, "uid"    # I

    .line 525
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v0

    .line 526
    .local v0, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 531
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_0

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No longer deferring broadcasts to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BroadcastDispatcher"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/am/BroadcastDispatcher;->removeDeferral(Lcom/android/server/am/BroadcastDispatcher$Deferrals;)Z

    .line 535
    return v1

    .line 538
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    .line 263
    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    .line 264
    invoke-static {v1}, Lcom/android/server/am/BroadcastDispatcher;->isDeferralsListEmpty(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 261
    return v1

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method replaceBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "typeForLogging"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 320
    .local v0, "old":Lcom/android/server/am/BroadcastRecord;
    if-nez v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 323
    :cond_0
    if-nez v0, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/BroadcastDispatcher;->replaceDeferredBroadcastLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 326
    :cond_1
    return-object v0
.end method

.method public retireBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 513
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eq p1, v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retiring broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match current outgoing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BroadcastDispatcher"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mCurrentBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 518
    return-void
.end method

.method public scheduleDeferralCheckLocked(Z)V
    .locals 5
    .param p1, "force"    # Z

    .line 613
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    .line 615
    .local v0, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    iget-object v1, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mScheduleRunnable:Ljava/lang/Runnable;

    iget-wide v3, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 618
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mRecheckScheduled:Z

    .line 619
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v1, :cond_1

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling deferred broadcast recheck at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastDispatcher"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v0    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 252
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarm:Lcom/android/server/AlarmManagerInternal;

    .line 253
    iget-object v1, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmListener:Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v0, v1}, Lcom/android/server/AlarmManagerInternal;->registerInFlightListener(Lcom/android/server/AlarmManagerInternal$InFlightListener;)V

    .line 254
    return-void
.end method

.method public startDeferring(I)V
    .locals 10
    .param p1, "uid"    # I

    .line 547
    iget-object v0, p0, Lcom/android/server/am/BroadcastDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastDispatcher;->findUidLocked(I)Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    move-result-object v1

    .line 551
    .local v1, "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    if-nez v1, :cond_2

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 554
    .local v4, "now":J
    new-instance v9, Lcom/android/server/am/BroadcastDispatcher$Deferrals;

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v6, v2, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    .line 557
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    move-object v2, v9

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BroadcastDispatcher$Deferrals;-><init>(IJJI)V

    move-object v1, v9

    .line 558
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_0

    .line 559
    const-string v2, "BroadcastDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now deferring broadcasts to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " until "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferUntil:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    iget v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->alarmCount:I

    if-nez v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mDeferredBroadcasts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/am/BroadcastDispatcher;->insertLocked(Ljava/util/ArrayList;Lcom/android/server/am/BroadcastDispatcher$Deferrals;)V

    .line 566
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastDispatcher;->scheduleDeferralCheckLocked(Z)V

    goto :goto_0

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mAlarmBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v4    # "now":J
    :goto_0
    goto :goto_1

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/BroadcastDispatcher;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastConstants;->DEFERRAL:J

    iput-wide v2, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    .line 575
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    if-eqz v2, :cond_3

    .line 576
    const-string v2, "BroadcastDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " slow again, deferral interval reset to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/am/BroadcastDispatcher$Deferrals;->deferredBy:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v1    # "d":Lcom/android/server/am/BroadcastDispatcher$Deferrals;
    :cond_3
    :goto_1
    monitor-exit v0

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
