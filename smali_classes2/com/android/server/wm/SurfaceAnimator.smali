.class Lcom/android/server/wm/SurfaceAnimator;
.super Ljava/lang/Object;
.source "SurfaceAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceAnimator$Animatable;,
        Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;,
        Lcom/android/server/wm/SurfaceAnimator$AnimationType;
    }
.end annotation


# static fields
.field static final ANIMATION_TYPE_ALL:I = -0x1

.field static final ANIMATION_TYPE_APP_TRANSITION:I = 0x1

.field static final ANIMATION_TYPE_DIMMER:I = 0x4

.field static final ANIMATION_TYPE_FIXED_TRANSFORM:I = 0x40

.field static final ANIMATION_TYPE_INSETS_CONTROL:I = 0x20

.field static final ANIMATION_TYPE_NONE:I = 0x0

.field static final ANIMATION_TYPE_RECENTS:I = 0x8

.field static final ANIMATION_TYPE_SCREEN_ROTATION:I = 0x2

.field static final ANIMATION_TYPE_WINDOW_ANIMATION:I = 0x10

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field final mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

.field private mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field private mAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mAnimationStartDelayed:Z

.field private mAnimationType:I

.field private final mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field mLeash:Landroid/view/SurfaceControl;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .param p2, "staticAnimationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 78
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 79
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 80
    invoke-direct {p0, p2}, Lcom/android/server/wm/SurfaceAnimator;->getFinishedCallback(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 81
    return-void
.end method

.method private cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V
    .locals 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "restarting"    # Z
    .param p3, "forwardCancel"    # Z

    .line 305
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling animation restarting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 307
    .local v0, "leash":Landroid/view/SurfaceControl;
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 308
    .local v1, "animation":Lcom/android/server/wm/AnimationAdapter;
    iget v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 309
    .local v2, "animationType":I
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 310
    .local v3, "animationFinishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 311
    if-eqz v1, :cond_3

    .line 312
    iget-boolean v5, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    .line 313
    invoke-interface {v1, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 315
    :cond_1
    if-nez p2, :cond_3

    .line 316
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    if-eqz v5, :cond_2

    .line 317
    invoke-interface {v5, v2, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 319
    :cond_2
    if-eqz v3, :cond_3

    .line 320
    invoke-interface {v3, v2, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 325
    :cond_3
    if-eqz p3, :cond_4

    if-eqz v0, :cond_4

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 327
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 330
    :cond_4
    if-nez p2, :cond_5

    .line 331
    iput-boolean v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 333
    :cond_5
    return-void
.end method

.method static createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;
    .locals 4
    .param p0, "animatable"    # Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "type"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "hidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/SurfaceAnimator$Animatable;",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl$Transaction;",
            "IIIIIZ",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)",
            "Landroid/view/SurfaceControl;"
        }
    .end annotation

    .line 387
    .local p9, "transactionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Reparenting to leash"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 389
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - animation-leash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p8}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 399
    const-string v1, "SurfaceAnimator.createAnimationLeash"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 400
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 401
    .local v1, "leash":Landroid/view/SurfaceControl;
    invoke-virtual {p2, v1, p4, p5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 402
    int-to-float v2, p6

    int-to-float v3, p7

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 403
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 404
    if-eqz p8, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 406
    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 407
    return-object v1
.end method

.method private getFinishedCallback(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .locals 1
    .param p1, "staticAnimationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 85
    new-instance v0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$Y4hCTFZUnyoMqrbq2rxOWj68ccg;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$Y4hCTFZUnyoMqrbq2rxOWj68ccg;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-object v0
.end method

.method static removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z
    .locals 6
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "destroy"    # Z

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "scheduleAnim":Z
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 355
    .local v1, "surface":Landroid/view/SurfaceControl;
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 360
    .local v2, "parent":Landroid/view/SurfaceControl;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 361
    .local v3, "reparent":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 362
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reparenting to original parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 366
    invoke-virtual {p0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 367
    const/4 v0, 0x1

    .line 370
    :cond_2
    if-eqz p3, :cond_3

    .line 371
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 372
    const/4 v0, 0x1

    .line 375
    :cond_3
    if-eqz v3, :cond_4

    .line 378
    invoke-interface {p1, p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 379
    const/4 v0, 0x1

    .line 381
    :cond_4
    return v0
.end method

.method private reset(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "destroyLeash"    # Z

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 338
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 340
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 341
    return-void

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 344
    .local v1, "leash":Landroid/view/SurfaceControl;
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {p1, v0, v1, p2}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    move-result v0

    .line 346
    .local v0, "scheduleAnim":Z
    if-eqz v0, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 349
    :cond_1
    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    .line 227
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 431
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLeash="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_0

    const-string v0, " mAnimationStartDelayed=true"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Animation: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_1

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 438
    :cond_1
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 419
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 420
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v2, :cond_0

    .line 421
    const-wide v3, 0x10b00000003L

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/wm/AnimationAdapter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_1

    .line 424
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 426
    :cond_1
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 427
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 428
    return-void
.end method

.method endDelayingAnimationStart()V
    .locals 6

    .line 191
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 192
    .local v0, "delayed":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 193
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v3}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    .line 198
    :cond_0
    return-void
.end method

.method getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    return-object v0
.end method

.method getAnimationType()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    return v0
.end method

.method hasLeash()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAnimating()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAnimationStartDelayed()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    return v0
.end method

.method public synthetic lambda$getFinishedCallback$0$SurfaceAnimator(Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .locals 3
    .param p1, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p2, "staticAnimationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p3, "type"    # I

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p1, v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 104
    .local v0, "animationFinishCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 105
    if-eqz p2, :cond_1

    .line 106
    invoke-interface {p2, p3, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 108
    :cond_1
    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v0, p3, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 111
    :cond_2
    return-void
.end method

.method public synthetic lambda$getFinishedCallback$1$SurfaceAnimator(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 4
    .param p1, "staticAnimationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p2, "type"    # I
    .param p3, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 87
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimator;

    .line 88
    .local v1, "target":Lcom/android/server/wm/SurfaceAnimator;
    if-eqz v1, :cond_0

    .line 89
    iget-object v2, v1, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {v2, p2, p3}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 93
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p3, v2, :cond_1

    .line 94
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 96
    :cond_1
    :try_start_2
    new-instance v2, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$qxm0Z0Ve0b3lKnyQQMgWVQfTP3Q;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$qxm0Z0Ve0b3lKnyQQMgWVQfTP3Q;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V

    .line 114
    .local v2, "resetAndInvokeFinish":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v3, v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    invoke-interface {p3, v2}, Lcom/android/server/wm/AnimationAdapter;->shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 118
    .end local v1    # "target":Lcom/android/server/wm/SurfaceAnimator;
    .end local v2    # "resetAndInvokeFinish":Ljava/lang/Runnable;
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 255
    return-void
.end method

.method setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 237
    return-void
.end method

.method setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 246
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V
    .locals 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I

    .line 171
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 172
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I
    .param p5, "animationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 166
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/SurfaceFreezer;)V

    .line 167
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/SurfaceFreezer;)V
    .locals 17
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I
    .param p5, "animationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .param p6, "freezer"    # Lcom/android/server/wm/SurfaceFreezer;

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p4

    const/4 v1, 0x1

    invoke-direct {v0, v11, v1, v1}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 139
    move-object/from16 v13, p2

    iput-object v13, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 140
    iput v12, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 141
    move-object/from16 v14, p5

    iput-object v14, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 142
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v15

    .line 143
    .local v15, "surface":Landroid/view/SurfaceControl;
    const-string v10, "WindowManager"

    if-nez v15, :cond_0

    .line 144
    const-string v1, "Unable to start animation, surface is null or no children."

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 146
    return-void

    .line 148
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/SurfaceFreezer;->takeLeashForAnimation()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 149
    if-nez v1, :cond_2

    .line 150
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 151
    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceWidth()I

    move-result v5

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 150
    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v16, v9

    move/from16 v9, p3

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-static/range {v1 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 153
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2, v11, v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_1

    .line 149
    :cond_2
    move-object v13, v10

    .line 155
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v1, v11, v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 156
    iget-boolean v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-eqz v1, :cond_4

    .line 157
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_3

    const-string v1, "Animation start delayed"

    invoke-static {v13, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_3
    return-void

    .line 160
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {v1, v2, v11, v12, v3}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 161
    return-void
.end method

.method startDelayingAnimationStart()V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 185
    :cond_0
    return-void
.end method

.method transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V
    .locals 5
    .param p1, "from"    # Lcom/android/server/wm/SurfaceAnimator;

    .line 265
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 269
    .local v0, "surface":Landroid/view/SurfaceControl;
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 270
    .local v1, "parent":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 276
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 277
    .local v2, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 278
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 279
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 280
    iget v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    iput v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 281
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 284
    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 285
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 286
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 287
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v3, v2, v4}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 288
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {v3, v4, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-void

    .line 271
    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_2
    :goto_0
    const-string v2, "WindowManager"

    const-string v3, "Unable to transfer animation, surface or parent is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 273
    return-void
.end method
