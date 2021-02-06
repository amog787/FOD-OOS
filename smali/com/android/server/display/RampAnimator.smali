.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RampAnimator"


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:F

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:F

.field private mTargetValue:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 158
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 55
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    .line 56
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # J

    .line 32
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .line 32
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/RampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .line 32
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/RampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .line 32
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)Landroid/util/FloatProperty;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/RampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 32
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method private cancelAnimationCallback()V
    .locals 4

    .line 155
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method private postAnimationCallback()V
    .locals 4

    .line 151
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 152
    return-void
.end method


# virtual methods
.method public animateTo(FF)Z
    .locals 4
    .param p1, "target"    # F
    .param p2, "rate"    # F

    .line 73
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    invoke-static {p1}, Lcom/android/server/display/DisplayOLC;->limitTarget(F)F

    move-result p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " rate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mTargetValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-static {p1, v0, v1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getTarget(FFZ)F

    move-result p1

    .line 76
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->EqualsWithMargin(FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    return v1

    .line 78
    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    invoke-static {p1, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->EqualsWithMargin(FF)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 79
    return v2

    .line 81
    :cond_1
    invoke-static {p2}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRate(F)F

    move-result p2

    .line 84
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v3, 0x0

    if-nez v0, :cond_8

    cmpg-float v0, p2, v3

    if-gtz v0, :cond_2

    goto :goto_0

    .line 115
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    cmpg-float v0, v3, p1

    if-gtz v0, :cond_5

    .line 119
    :cond_4
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 122
    :cond_5
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    move v0, v2

    .line 123
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    .line 126
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_7

    .line 127
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 128
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 129
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 130
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 133
    :cond_7
    return v0

    .line 85
    .end local v0    # "changed":Z
    :cond_8
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 105
    :cond_9
    return v2

    .line 86
    :cond_a
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 87
    iput v3, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 88
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    .line 89
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 92
    invoke-static {p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->updateTargAndCurValue(F)V

    .line 94
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v0, p1}, Lcom/android/server/display/RampAnimator$Listener;->onBrightnessChanged(F)V

    .line 95
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object v3, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 96
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_b

    .line 97
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 98
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 100
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v0, :cond_c

    .line 101
    invoke-interface {v0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 103
    :cond_c
    return v1
.end method

.method public getBrightnessValue()F
    .locals 1

    .line 211
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 140
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .line 147
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 148
    return-void
.end method
