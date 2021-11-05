.class Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "MultiFingerMultiTap.java"


# instance fields
.field private mBases:[Landroid/graphics/PointF;

.field protected mCompletedTapCount:I

.field private mDoubleTapSlop:I

.field private mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsTargetFingerCountReached:Z

.field final mTargetFingerCount:I

.field final mTargetTapCount:I

.field private mTouchSlop:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fingers"    # I
    .param p3, "taps"    # I
    .param p4, "gestureId"    # I
    .param p5, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 66
    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 67
    const-string v0, "Tap count must greater than 0."

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 68
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    .line 69
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    .line 70
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mDoubleTapSlop:I

    .line 71
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTouchSlop:I

    .line 73
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    new-array v0, v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 75
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    aput-object v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->clear()V

    .line 79
    return-void
.end method

.method private findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "slop"    # F
    .param p3, "filterMatched"    # Z

    .line 245
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 246
    .local v0, "moveDelta":F
    const/4 v1, 0x0

    .line 247
    .local v1, "nearest":Landroid/graphics/PointF;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 248
    aget-object v3, v3, v2

    .line 249
    .local v3, "p":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    goto :goto_1

    .line 252
    :cond_0
    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    goto :goto_1

    .line 255
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 256
    .local v4, "index":I
    iget v5, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 257
    .local v5, "dX":F
    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    .line 258
    .local v6, "dY":F
    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-nez v8, :cond_3

    cmpl-float v7, v6, v7

    if-nez v7, :cond_3

    .line 259
    if-eqz p3, :cond_2

    .line 260
    iget-object v7, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    return-object v3

    .line 264
    :cond_3
    float-to-double v7, v5

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 265
    .local v7, "delta":F
    cmpl-float v8, v0, v7

    if-lez v8, :cond_4

    .line 266
    move v0, v7

    .line 267
    move-object v1, v3

    .line 247
    .end local v3    # "p":Landroid/graphics/PointF;
    .end local v4    # "index":I
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "delta":F
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "i":I
    :cond_5
    cmpg-float v2, v0, p2

    if-gez v2, :cond_7

    .line 271
    if-eqz p3, :cond_6

    .line 272
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_6
    return-object v1

    .line 276
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method private initBaseLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 224
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 225
    .local v1, "baseIndex":I
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    .line 226
    .local v2, "p":Landroid/graphics/PointF;
    iget v3, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 229
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected clear()V
    .locals 3

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 84
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 86
    aget-object v1, v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 90
    return-void
.end method

.method public getGestureName()Ljava/lang/String;
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-Finger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 211
    const-string v1, "Single"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 213
    const-string v1, "Double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 215
    const-string v1, "Triple"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 216
    :cond_2
    if-le v1, v2, :cond_3

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    :cond_3
    :goto_0
    const-string v1, " Tap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 96
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    if-ne v0, v1, :cond_0

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 98
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 102
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    if-nez v0, :cond_1

    .line 103
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->initBaseLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 104
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mDoubleTapSlop:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 110
    .local v0, "nearest":Landroid/graphics/PointF;
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 113
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 114
    .end local v1    # "index":I
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 117
    :goto_0
    return-void
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 151
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTouchSlop:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 154
    :cond_0
    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 164
    .local v0, "currentFingerCount":I
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    if-gt v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 171
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->initBaseLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    .local v1, "nearest":Landroid/graphics/PointF;
    goto :goto_0

    .line 173
    .end local v1    # "nearest":Landroid/graphics/PointF;
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mDoubleTapSlop:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    move-result-object v1

    .line 175
    .restart local v1    # "nearest":Landroid/graphics/PointF;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->getState()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->getState()I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    if-eqz v1, :cond_4

    .line 178
    iget v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    if-ne v0, v3, :cond_3

    .line 179
    iput-boolean v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 182
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 183
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 184
    .end local v2    # "index":I
    goto :goto_1

    .line 185
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 187
    :goto_1
    return-void

    .line 165
    .end local v1    # "nearest":Landroid/graphics/PointF;
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 166
    return-void
.end method

.method protected onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 192
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 194
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->getState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 200
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 204
    :goto_1
    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 123
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTouchSlop:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 124
    .local v0, "nearest":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->getState()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    if-eqz v0, :cond_3

    .line 127
    iget-boolean v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    if-eqz v2, :cond_1

    .line 128
    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 129
    iput-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 130
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 135
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    if-ne v1, v3, :cond_2

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 138
    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    if-ne v1, v2, :cond_4

    .line 140
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->completeAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 146
    :cond_4
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 283
    const-string v1, ", CompletedTapCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, ", IsTargetFingerCountReached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, ", Bases: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, ", ExcludedPointsForDownSlopChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
