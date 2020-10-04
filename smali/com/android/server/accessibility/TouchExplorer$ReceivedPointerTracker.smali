.class Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mLastReceivedDownEdgeFlags:I

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerDownX:F

.field private mLastReceivedUpPointerDownY:F

.field private mPrimaryPointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 1481
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    .line 1486
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    .line 1487
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    return-void
.end method

.method private findPrimaryPointerId()I
    .locals 8

    .line 1690
    const/4 v0, -0x1

    .line 1691
    .local v0, "primaryPointerId":I
    const-wide v1, 0x7fffffffffffffffL

    .line 1694
    .local v1, "minDownTime":J
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1695
    .local v3, "pointerIdBits":I
    :goto_0
    if-lez v3, :cond_1

    .line 1696
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 1697
    .local v4, "pointerId":I
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    not-int v5, v5

    and-int/2addr v3, v5

    .line 1698
    iget-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v5, v5, v4

    .line 1699
    .local v5, "downPointerTime":J
    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    .line 1700
    move-wide v1, v5

    .line 1701
    move v0, v4

    .line 1703
    .end local v4    # "pointerId":I
    .end local v5    # "downPointerTime":J
    :cond_0
    goto :goto_0

    .line 1704
    :cond_1
    return v0
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .locals 5
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1645
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1646
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 1648
    .local v1, "pointerFlag":I
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1649
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1650
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1652
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    .line 1654
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1655
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 1656
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 1657
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 1659
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1660
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .locals 6
    .param p1, "pointerIndex"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1669
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1670
    .local v0, "pointerId":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 1672
    .local v1, "pointerFlag":I
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1673
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v3, v2, v0

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1674
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v4, v3, v0

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 1676
    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    not-int v5, v1

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1677
    const/4 v4, 0x0

    aput v4, v2, v0

    .line 1678
    aput v4, v3, v0

    .line 1679
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 1681
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    if-ne v2, v0, :cond_0

    .line 1682
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1684
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1510
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 1511
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 1512
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 1513
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1514
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1515
    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1516
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1517
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 1518
    return-void
.end method

.method public getLastReceivedDownEdgeFlags()I
    .locals 1

    .line 1635
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    return v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 1555
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .locals 2

    .line 1614
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerDownX()F
    .locals 1

    .line 1621
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    return v0
.end method

.method public getLastReceivedUpPointerDownY()F
    .locals 1

    .line 1628
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    return v0
.end method

.method public getPrimaryPointerId()I
    .locals 2

    .line 1604
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1605
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->findPrimaryPointerId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    .line 1607
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryPointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .locals 1

    .line 1562
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .locals 2
    .param p1, "pointerId"    # I

    .line 1597
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .locals 1
    .param p1, "pointerId"    # I

    .line 1581
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .locals 1
    .param p1, "pointerId"    # I

    .line 1589
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isReceivedPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .line 1572
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 1573
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1526
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1527
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1529
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 1531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1532
    .local v0, "action":I
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1543
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 1537
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 1538
    goto :goto_0

    .line 1540
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    .line 1541
    goto :goto_0

    .line 1534
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    .line 1535
    nop

    .line 1549
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1710
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1713
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 1715
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1717
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1720
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    const-string v1, "\nPrimary pointer id [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1723
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
