.class public Lcom/android/server/wm/SeamlessRotator;
.super Ljava/lang/Object;
.source "SeamlessRotator.java"


# instance fields
.field private final mFloat9:[F

.field private final mNewRotation:I

.field private final mOldRotation:I

.field mScreenDecor:Z

.field private final mTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(IILandroid/view/DisplayInfo;)V
    .locals 5
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "info"    # Landroid/view/DisplayInfo;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SeamlessRotator;->mScreenDecor:Z

    .line 60
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    .line 61
    iput p2, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    .line 63
    iget v1, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    :cond_0
    move v0, v2

    .line 64
    .local v0, "flipped":Z
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_0

    :cond_2
    iget v1, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 65
    .local v1, "h":I
    :goto_0
    if-eqz v0, :cond_3

    iget v2, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_1

    :cond_3
    iget v2, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 67
    .local v2, "w":I
    :goto_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    .local v3, "tmp":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-static {p1, v2, v1, v4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 69
    invoke-static {p2, v2, v1, v3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 70
    iget-object v4, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 71
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 150
    const-string v0, "{old="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", new="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 151
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public finish(Lcom/android/server/wm/WindowState;Z)V
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "timeout"    # Z

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 124
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 125
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-boolean v1, p0, Lcom/android/server/wm/SeamlessRotator;->mScreenDecor:Z

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v0, v1

    .line 127
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTransform="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastSurfacePosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeamlessRotator"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 134
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 135
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 136
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 137
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 136
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 138
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 139
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 138
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 143
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/SeamlessRotator;->mScreenDecor:Z

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 147
    :cond_2
    return-void
.end method

.method public getOldRotation()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 156
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 157
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    .line 158
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

.method public unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 80
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    const/16 v2, 0x7e8

    if-ne v0, v2, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScreenDecorOverlay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iput-boolean v1, p0, Lcom/android/server/wm/SeamlessRotator;->mScreenDecor:Z

    .line 83
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrotate: win="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTransform="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastSurfacePosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SeamlessRotator"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 93
    .local v0, "winSurfacePos":[F
    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 94
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    aget v3, v0, v3

    aget v1, v0, v1

    invoke-virtual {p1, v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 95
    return-void
.end method
