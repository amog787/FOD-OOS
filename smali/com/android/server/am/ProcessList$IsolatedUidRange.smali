.class final Lcom/android/server/am/ProcessList$IsolatedUidRange;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IsolatedUidRange"
.end annotation


# instance fields
.field public final mFirstUid:I

.field public final mLastUid:I

.field private mNextUid:I

.field private final mUidUsed:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;
    .param p2, "firstUid"    # I
    .param p3, "lastUid"    # I

    .line 573
    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    .line 574
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    .line 575
    iput p3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    .line 576
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 577
    return-void
.end method


# virtual methods
.method allocateIsolatedUidLocked(I)I
    .locals 6
    .param p1, "userId"    # I

    .line 582
    iget v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 583
    .local v0, "stepsLeft":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 584
    iget v3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    if-lt v3, v4, :cond_0

    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    if-le v3, v4, :cond_1

    .line 585
    :cond_0
    iget v3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    iput v3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 587
    :cond_1
    iget v3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 588
    .local v3, "uid":I
    iget v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    .line 589
    iget-object v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 590
    iget-object v4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 591
    return v3

    .line 583
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    .end local v2    # "i":I
    .end local v3    # "uid":I
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method freeIsolatedUidLocked(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 599
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 600
    return-void
.end method
