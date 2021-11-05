.class Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemBarBackgroundPainter"
.end annotation


# instance fields
.field private final mInsetsState:Landroid/view/InsetsState;

.field private final mNavigationBarColor:I

.field private final mNavigationBarPaint:Landroid/graphics/Paint;

.field private final mScale:F

.field private final mStatusBarColor:I

.field private final mStatusBarPaint:Landroid/graphics/Paint;

.field private final mSysUiVis:I

.field private final mSystemBarInsets:Landroid/graphics/Rect;

.field private final mWindowFlags:I

.field private final mWindowPrivateFlags:I


# direct methods
.method constructor <init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V
    .locals 9
    .param p1, "windowFlags"    # I
    .param p2, "windowPrivateFlags"    # I
    .param p3, "sysUiVis"    # I
    .param p4, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p5, "scale"    # F
    .param p6, "insetsState"    # Landroid/view/InsetsState;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    .line 582
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    .line 590
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 594
    iput p1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    .line 595
    iput p2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    .line 596
    iput p3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    .line 597
    iput p5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    .line 598
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 599
    .local v0, "context":Landroid/content/Context;
    const v1, 0x1060231

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 601
    .local v1, "semiTransparent":I
    nop

    .line 602
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v5

    .line 604
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v8

    .line 601
    const/high16 v3, 0x4000000

    const/16 v7, 0x2000

    move v2, p1

    move v4, v1

    move v6, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    .line 605
    nop

    .line 607
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v5

    .line 609
    invoke-virtual {p4}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11100a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v8, v2

    .line 605
    const/high16 v3, 0x8000000

    const/16 v7, 0x10

    move v2, p1

    move v4, v1

    move v6, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/policy/DecorView;->calculateBarColor(IIIIIIZ)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    .line 611
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 612
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 613
    iput-object p6, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    .line 614
    return-void
.end method

.method private isNavigationBarColorViewVisible()Z
    .locals 5

    .line 635
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 637
    .local v0, "forceBarBackground":Z
    :goto_0
    sget v1, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 638
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v1

    goto :goto_1

    .line 640
    :cond_1
    sget-object v1, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(Landroid/view/InsetsState;IIZ)Z

    move-result v1

    .line 637
    :goto_1
    return v1
.end method


# virtual methods
.method drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"    # Landroid/graphics/Rect;

    .line 645
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawNavigationBarBackground(Landroid/graphics/Canvas;)V

    .line 647
    return-void
.end method

.method drawNavigationBarBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 662
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 663
    .local v0, "navigationBarRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 665
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->isNavigationBarColorViewVisible()Z

    move-result v1

    .line 666
    .local v1, "visible":Z
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 667
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mNavigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 669
    :cond_0
    return-void
.end method

.method drawStatusBarBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "alreadyDrawnFrame"    # Landroid/graphics/Rect;
    .param p3, "statusBarHeight"    # I

    .line 652
    if-lez p3, :cond_2

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 653
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 655
    .local v0, "rightInset":I
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 656
    .local v1, "left":I
    :goto_0
    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v5, v2

    int-to-float v6, p3

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 658
    .end local v0    # "rightInset":I
    .end local v1    # "left":I
    :cond_2
    return-void
.end method

.method getStatusBarColorViewHeight()I
    .locals 6

    .line 621
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowPrivateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 623
    .local v0, "forceBarBackground":Z
    :goto_0
    sget v2, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSysUiVis:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    .line 624
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(IIIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mInsetsState:Landroid/view/InsetsState;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mStatusBarColor:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mWindowFlags:I

    .line 626
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(Landroid/view/InsetsState;IIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 630
    :cond_2
    return v1
.end method

.method setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "systemBarInsets"    # Landroid/graphics/Rect;

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 618
    return-void
.end method
