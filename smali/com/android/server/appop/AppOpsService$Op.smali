.class final Lcom/android/server/appop/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field private mAccessTimes:Landroid/util/LongSparseLongArray;

.field private mDurations:Landroid/util/LongSparseLongArray;

.field private mProxyPackageNames:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyUids:Landroid/util/LongSparseLongArray;

.field private mRejectTimes:Landroid/util/LongSparseLongArray;

.field private mode:I

.field op:I

.field final packageName:Ljava/lang/String;

.field running:Z

.field startNesting:I

.field startRealtime:J

.field final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V
    .locals 1
    .param p1, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput p3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 449
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 450
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 451
    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    .line 452
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appop/AppOpsService$Op;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 431
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/appop/AppOpsService$Op;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p1, "x1"    # I

    .line 431
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 431
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 431
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 431
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 431
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 431
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private updateAccessTimeAndDuration(JJII)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "duration"    # J
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 521
    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 522
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_0

    .line 523
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 526
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_1

    .line 527
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    .line 529
    :cond_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 530
    return-void
.end method

.method private updateProxyState(JILjava/lang/String;)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "proxyUid"    # I
    .param p4, "proxyPackageName"    # Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    int-to-long v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 538
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 539
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 542
    return-void
.end method


# virtual methods
.method public accessed(JILjava/lang/String;II)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "proxyUid"    # I
    .param p4, "proxyPackageName"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 465
    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 466
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_0

    .line 467
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    .line 469
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 470
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/appop/AppOpsService$Op;->updateProxyState(JILjava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseLongArray;->delete(J)V

    .line 474
    :cond_1
    return-void
.end method

.method public continuing(JII)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "uidState"    # I
    .param p4, "flags"    # I

    .line 512
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 513
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_0

    .line 514
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 517
    return-void
.end method

.method evalMode()I
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v0

    return v0
.end method

.method public finished(JJII)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "duration"    # J
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 499
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    .line 501
    return-void
.end method

.method getMode()I
    .locals 1

    .line 455
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method hasAnyTime()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_2

    .line 546
    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0
.end method

.method public rejected(JILjava/lang/String;II)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "proxyUid"    # I
    .param p4, "proxyPackageName"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 479
    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    .line 480
    .local v0, "key":J
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_0

    .line 481
    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 484
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/appop/AppOpsService$Op;->updateProxyState(JILjava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-eqz v2, :cond_1

    .line 486
    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseLongArray;->delete(J)V

    .line 488
    :cond_1
    return-void
.end method

.method public running(JJII)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "duration"    # J
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 506
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    .line 507
    return-void
.end method

.method public started(JII)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "uidState"    # I
    .param p4, "flags"    # I

    .line 492
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    .line 494
    return-void
.end method
