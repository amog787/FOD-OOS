.class public Lcom/android/server/wm/WindowChangeAnimationSpec;
.super Ljava/lang/Object;
.source "WindowChangeAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0x150


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mEndBounds:Landroid/graphics/Rect;

.field private final mIsAppAnimation:Z

.field private final mIsThumbnail:Z

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mThreadLocalTmps:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V
    .locals 2
    .param p1, "startBounds"    # Landroid/graphics/Rect;
    .param p2, "endBounds"    # Landroid/graphics/Rect;
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "durationScale"    # F
    .param p5, "isAppAnimation"    # Z
    .param p6, "isThumbnail"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowChangeAnimationSpec$J5jIvng4n-ctFR8T6L2f_W3o1KU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowChangeAnimationSpec$J5jIvng4n-ctFR8T6L2f_W3o1KU;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 62
    iput-boolean p5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsAppAnimation:Z

    .line 63
    iput-boolean p6, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    .line 64
    const/high16 v0, 0x43a80000    # 336.0f

    mul-float/2addr v0, p4

    float-to-int v0, v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createBoundsInterpolator(JLandroid/view/DisplayInfo;)V

    .line 65
    return-void
.end method

.method private createBoundsInterpolator(JLandroid/view/DisplayInfo;)V
    .locals 19
    .param p1, "duration"    # J
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 94
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 96
    .local v4, "growing":Z
    :goto_0
    const v7, 0x3f333333    # 0.7f

    .line 97
    .local v7, "scalePart":F
    long-to-float v8, v1

    mul-float/2addr v8, v7

    float-to-long v8, v8

    .line 98
    .local v8, "scalePeriod":J
    iget-object v10, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    iget-object v11, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v7

    add-float/2addr v10, v12

    .line 100
    .local v10, "startScaleX":F
    iget-object v12, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v7

    iget-object v13, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v13, v11, v7

    add-float/2addr v12, v13

    .line 102
    .local v12, "startScaleY":F
    iget-boolean v13, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v13, :cond_2

    .line 103
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v5, v6

    .line 104
    .local v5, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/4 v13, 0x0

    invoke-direct {v6, v11, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 105
    .local v6, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    if-nez v4, :cond_1

    .line 107
    sub-long v13, v1, v8

    invoke-virtual {v6, v13, v14}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 109
    :cond_1
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 110
    div-float v13, v11, v10

    .line 111
    .local v13, "endScaleX":F
    div-float/2addr v11, v12

    .line 112
    .local v11, "endScaleY":F
    new-instance v14, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v14, v13, v13, v11, v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    move-object v6, v14

    .line 113
    invoke-virtual {v6, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 114
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 115
    iput-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 116
    iget-object v14, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v15, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v16, v5

    .end local v5    # "animSet":Landroid/view/animation/AnimationSet;
    .local v16, "animSet":Landroid/view/animation/AnimationSet;
    iget-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v17, v6

    .end local v6    # "anim":Landroid/view/animation/Animation;
    .local v17, "anim":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 117
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move/from16 v18, v7

    .end local v7    # "scalePart":F
    .local v18, "scalePart":F
    iget-object v7, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 116
    invoke-virtual {v14, v15, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 118
    .end local v11    # "endScaleY":F
    .end local v13    # "endScaleX":F
    .end local v16    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v17    # "anim":Landroid/view/animation/Animation;
    move/from16 v16, v4

    goto :goto_1

    .line 119
    .end local v18    # "scalePart":F
    .restart local v7    # "scalePart":F
    :cond_2
    move/from16 v18, v7

    .end local v7    # "scalePart":F
    .restart local v18    # "scalePart":F
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v5, v7

    .line 120
    .restart local v5    # "animSet":Landroid/view/animation/AnimationSet;
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v7, v10, v11, v12, v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 121
    .local v7, "scaleAnim":Landroid/view/animation/Animation;
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 122
    if-nez v4, :cond_3

    .line 123
    sub-long v13, v1, v8

    invoke-virtual {v7, v13, v14}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 125
    :cond_3
    invoke-virtual {v5, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    iget-object v13, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-direct {v11, v13, v14, v15, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v6, v11

    .line 128
    .local v6, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v6, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    new-instance v11, Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v11, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 131
    .local v11, "startClip":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-direct {v13, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 132
    .local v13, "endClip":Landroid/graphics/Rect;
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 133
    invoke-virtual {v13, v14, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 134
    new-instance v14, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v14, v11, v13}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 135
    .local v14, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v14, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 136
    invoke-virtual {v5, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 137
    iput-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 138
    iget-object v15, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v0, v3, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v16, v4

    .end local v4    # "growing":Z
    .local v16, "growing":Z
    iget v4, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v15, v1, v2, v0, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 141
    .end local v5    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v6    # "translateAnim":Landroid/view/animation/Animation;
    .end local v7    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v11    # "startClip":Landroid/graphics/Rect;
    .end local v13    # "endClip":Landroid/graphics/Rect;
    .end local v14    # "clipAnim":Landroid/view/animation/Animation;
    :goto_1
    return-void
.end method

.method static synthetic lambda$new$0()Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    .locals 2

    .line 47
    new-instance v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowChangeAnimationSpec$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "currentPlayTime"    # J

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    .line 146
    .local v0, "tmp":Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 148
    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 149
    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 152
    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 153
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 157
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v6, v2, v3

    .line 158
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    iget-object v3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v3, 0x0

    aput v4, v2, v3

    .line 159
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 160
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v6, v6, v3

    div-float v6, v4, v6

    aput v6, v2, v3

    .line 161
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v6, v6, v5

    div-float/2addr v4, v6

    aput v4, v2, v5

    .line 162
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 163
    .local v2, "clipRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v7, v7, v3

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 164
    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v8, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v3, v8, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, v7

    float-to-int v3, v6

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 165
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v6, v6, v5

    mul-float/2addr v4, v6

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 166
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v5, v6, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 167
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 169
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "clipRect":Landroid/graphics/Rect;
    :goto_0
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .locals 6

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 174
    .local v0, "uptime":J
    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x3f7d70a4    # 0.99f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x78

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public canSkipFirstFrame()Z
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 191
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsAppAnimation:Z

    return v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 195
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 196
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 198
    return-void
.end method
