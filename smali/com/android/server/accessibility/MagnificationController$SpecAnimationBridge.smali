.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecAnimationBridge"
.end annotation


# instance fields
.field private final mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

.field private final mDisplayId:I

.field private mEnabled:Z

.field private final mEndMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mLock:Ljava/lang/Object;

.field private final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mStartMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;I)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "displayId"    # I

    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1167
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1169
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1171
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 1186
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    .line 1187
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    .line 1188
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mDisplayId:I

    .line 1189
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getAnimationDuration()J

    move-result-wide v0

    .line 1190
    .local v0, "animationDuration":J
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->newValueAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 1191
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1192
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1193
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1194
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1195
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;ILcom/android/server/accessibility/MagnificationController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/accessibility/MagnificationController$1;

    .line 1158
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 1158
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method private animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "toSpec"    # Landroid/view/MagnificationSpec;

    .line 1246
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 1247
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 1248
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1249
    return-void
.end method

.method private setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 1234
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 1240
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    .line 1243
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1253
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1254
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 1255
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 1256
    .local v1, "fract":F
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->scale:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->scale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 1258
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 1261
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1264
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 1266
    .end local v1    # "fract":F
    :cond_0
    monitor-exit v0

    .line 1267
    return-void

    .line 1266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1202
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eq p1, v1, :cond_0

    .line 1204
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 1205
    if-nez p1, :cond_0

    .line 1206
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    .line 1207
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    .line 1211
    :cond_0
    monitor-exit v0

    .line 1212
    return-void

    .line 1211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animate"    # Z

    .line 1215
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, p1}, Landroid/view/MagnificationSpec;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1222
    .local v1, "changed":Z
    if-eqz v1, :cond_2

    .line 1223
    if-eqz p2, :cond_1

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    goto :goto_0

    .line 1226
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 1229
    .end local v1    # "changed":Z
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1230
    return-void

    .line 1229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
