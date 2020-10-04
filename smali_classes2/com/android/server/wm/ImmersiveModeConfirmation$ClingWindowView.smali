.class Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClingWindowView"
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final BGCOLOR:I = -0x80000000

.field private static final OFFSET_DP:I = 0x60


# instance fields
.field private mClingLayout:Landroid/view/ViewGroup;

.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "confirm"    # Ljava/lang/Runnable;

    .line 262
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 263
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 220
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 225
    new-instance p1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 234
    new-instance p1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 253
    new-instance p1, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    iput-object p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 265
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 266
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->setImportantForAccessibility(I)V

    .line 267
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    .line 268
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 214
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 7

    .line 273
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 275
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 276
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$300(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 277
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 279
    .local v1, "density":F
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 282
    nop

    .line 283
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x109007d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 285
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020384

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 286
    .local v2, "ok":Landroid/widget/Button;
    new-instance v3, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v4}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$100(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 296
    .local v3, "cling":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 297
    const/high16 v4, -0x3d400000    # -96.0f

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 299
    new-instance v4, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 323
    .end local v3    # "cling":Landroid/view/View;
    goto :goto_0

    .line 324
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 327
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .line 338
    const/4 v0, 0x1

    return v0
.end method
