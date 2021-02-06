.class public Lcom/android/server/wm/SeamlessRotator;
.super Ljava/lang/Object;
.source "SeamlessRotator.java"


# instance fields
.field private final mApplyFixedTransformHint:Z

.field private final mFixedTransformHint:I

.field private final mFloat9:[F

.field private final mNewRotation:I

.field private final mOldRotation:I

.field private final mTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(IILandroid/view/DisplayInfo;Z)V
    .locals 5
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "info"    # Landroid/view/DisplayInfo;
    .param p4, "applyFixedTransformationHint"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    .line 60
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    .line 61
    iput p2, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    .line 62
    iput-boolean p4, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    .line 63
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mFixedTransformHint:I

    .line 64
    iget v0, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    move v0, v1

    .line 65
    .local v0, "flipped":Z
    if-eqz v0, :cond_2

    iget v1, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    :cond_2
    iget v1, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 66
    .local v1, "pH":I
    :goto_1
    if-eqz v0, :cond_3

    iget v2, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_3
    iget v2, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 68
    .local v2, "pW":I
    :goto_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    .local v3, "tmp":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-static {p1, v2, v1, v4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 70
    invoke-static {p2, v2, v1, v3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 71
    iget-object v4, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 72
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 132
    const-string v0, "{old="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", new="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 133
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "win"    # Lcom/android/server/wm/WindowContainer;

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 124
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 125
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 126
    iget-boolean v0, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 129
    :cond_0
    return-void
.end method

.method public finish(Lcom/android/server/wm/WindowState;Z)V
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "timeout"    # Z

    .line 111
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 112
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/SeamlessRotator;->finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 113
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 114
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 115
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 114
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    .line 116
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 116
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    .line 119
    :cond_0
    return-void
.end method

.method public getOldRotation()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 138
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 139
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ForcedSeamlessRotator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "win"    # Lcom/android/server/wm/WindowContainer;

    .line 79
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 82
    .local v0, "winSurfacePos":[F
    iget-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 83
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 84
    iget-boolean v1, p0, Lcom/android/server/wm/SeamlessRotator;->mApplyFixedTransformHint:Z

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/wm/SeamlessRotator;->mFixedTransformHint:I

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 87
    :cond_0
    return-void
.end method
