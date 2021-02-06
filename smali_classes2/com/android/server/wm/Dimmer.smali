.class Lcom/android/server/wm/Dimmer;
.super Ljava/lang/Object;
.source "Dimmer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;,
        Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;,
        Lcom/android/server/wm/Dimmer$DimState;,
        Lcom/android/server/wm/Dimmer$DimAnimatable;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_ANIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mDimState:Lcom/android/server/wm/Dimmer$DimState;

.field private mHost:Lcom/android/server/wm/WindowContainer;

.field private mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

.field private final mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "host"    # Lcom/android/server/wm/WindowContainer;

    .line 165
    sget-object v0, Lcom/android/server/wm/-$$Lambda$T-DzagmMaRQ2R96njClodf7hAPE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$T-DzagmMaRQ2R96njClodf7hAPE;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;)V

    .line 166
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;)V
    .locals 0
    .param p1, "host"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "surfaceAnimatorStarter"    # Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 170
    iput-object p2, p0, Lcom/android/server/wm/Dimmer;->mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Dimmer;

    .line 40
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method private dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IF)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "relativeLayer"    # I
    .param p4, "alpha"    # F

    .line 208
    invoke-direct {p0, p2}, Lcom/android/server/wm/Dimmer;->getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;

    move-result-object v0

    .line 210
    .local v0, "d":Lcom/android/server/wm/Dimmer$DimState;
    if-nez v0, :cond_0

    .line 211
    return-void

    .line 214
    :cond_0
    if-eqz p2, :cond_1

    .line 218
    iget-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v1, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 222
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    .line 225
    return-void
.end method

.method private getDimDuration(Lcom/android/server/wm/WindowContainer;)J
    .locals 3
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 355
    if-nez p1, :cond_0

    .line 356
    const-wide/16 v0, 0x0

    return-wide v0

    .line 360
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    .line 361
    .local v0, "animationAdapter":Lcom/android/server/wm/AnimationAdapter;
    if-nez v0, :cond_1

    const-wide/16 v1, 0xc8

    goto :goto_0

    .line 362
    :cond_1
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v1

    .line 361
    :goto_0
    return-wide v1
.end method

.method private getDimState(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Dimmer$DimState;
    .locals 3
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-nez v0, :cond_1

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/Dimmer;->makeDimLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 189
    .local v0, "ctl":Landroid/view/SurfaceControl;
    new-instance v1, Lcom/android/server/wm/Dimmer$DimState;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/Dimmer$DimState;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V

    iput-object v1, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 194
    if-nez p1, :cond_0

    .line 195
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0    # "ctl":Landroid/view/SurfaceControl;
    :cond_0
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v1, "WindowManager"

    const-string v2, "OutOfResourcesException creating dim surface"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    return-object v0
.end method

.method private makeDimLayer()Landroid/view/SurfaceControl;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 175
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dim Layer for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 177
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 178
    const-string v1, "Dimmer.makeDimLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 174
    return-object v0
.end method

.method private startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V
    .locals 6
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "animator"    # Lcom/android/server/wm/SurfaceAnimator;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "startAlpha"    # F
    .param p5, "endAlpha"    # F

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    new-instance v3, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v1, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;

    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/wm/Dimmer;->getDimDuration(Lcom/android/server/wm/WindowContainer;)J

    move-result-wide v4

    invoke-direct {v1, p4, p5, v4, v5}, Lcom/android/server/wm/Dimmer$AlphaAnimationSpec;-><init>(FFJ)V

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v3, v1, v2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 346
    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;->startAnimation(Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 350
    return-void
.end method

.method private startDimEnter(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "animator"    # Lcom/android/server/wm/SurfaceAnimator;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 336
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V

    .line 337
    return-void
.end method

.method private startDimExit(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "animator"    # Lcom/android/server/wm/SurfaceAnimator;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 341
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/Dimmer;->startAnim(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;FF)V

    .line 342
    return-void
.end method


# virtual methods
.method dimAbove(Landroid/view/SurfaceControl$Transaction;F)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "alpha"    # F

    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IF)V

    .line 251
    return-void
.end method

.method dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "alpha"    # F

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IF)V

    .line 264
    return-void
.end method

.method dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "alpha"    # F

    .line 275
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Dimmer;->dim(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;IF)V

    .line 276
    return-void
.end method

.method dontAnimateExit()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_0

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    .line 296
    :cond_0
    return-void
.end method

.method resetDimStates()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    .line 290
    :cond_0
    return-void
.end method

.method stopDim(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDontReset:Z

    .line 238
    :cond_0
    return-void
.end method

.method updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 308
    return v1

    .line 311
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/wm/Dimmer;->startDimExit(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V

    .line 319
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 320
    return v1

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v0, v0, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mLastRequestedDimContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/wm/Dimmer;->startDimEnter(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;)V

    .line 330
    :cond_4
    return v1
.end method
