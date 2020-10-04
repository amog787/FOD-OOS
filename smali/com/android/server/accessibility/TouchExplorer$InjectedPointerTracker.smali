.class Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InjectedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_INJECTED_POINTER_TRACKER:Ljava/lang/String; = "InjectedPointerTracker"


# instance fields
.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/TouchExplorer;

    .line 1352
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1352
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 1352
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1413
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1414
    return-void
.end method

.method public getInjectedPointerDownCount()I
    .locals 1

    .line 1427
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointersDown()I
    .locals 1

    .line 1434
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .locals 2

    .line 1420
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 1452
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isInjectedPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .line 1444
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 1445
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1374
    .local v0, "action":I
    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1394
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 1395
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1397
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 1398
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v1, :cond_2

    .line 1399
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1401
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1384
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1385
    .local v2, "pointerId":I
    shl-int/2addr v1, v2

    .line 1386
    .local v1, "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    not-int v4, v1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1387
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    if-nez v3, :cond_4

    .line 1388
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    .line 1390
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    :cond_4
    goto :goto_0

    .line 1377
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1378
    .restart local v2    # "pointerId":I
    shl-int/2addr v1, v2

    .line 1379
    .restart local v1    # "pointerFlag":I
    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    .line 1381
    .end local v1    # "pointerFlag":I
    .end local v2    # "pointerId":I
    nop

    .line 1407
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1465
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1468
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 1470
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 1471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1472
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1475
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
