.class public Lcom/android/server/wm/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;,
        Lcom/android/server/wm/BarController$BarHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_NAV_BAR_VISIBILITY_CHANGED:I = 0x1

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mContentFrame:Landroid/graphics/Rect;

.field protected final mDisplayId:I

.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field private mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field private mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

.field protected mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "transientFlag"    # I
    .param p4, "unhideFlag"    # I
    .param p5, "translucentFlag"    # I
    .param p6, "statusBarManagerId"    # I
    .param p7, "translucentWmFlag"    # I
    .param p8, "transparentFlag"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BarController;->mState:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mTag:Ljava/lang/String;

    .line 82
    iput p2, p0, Lcom/android/server/wm/BarController;->mDisplayId:I

    .line 83
    iput p3, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    .line 84
    iput p4, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    .line 85
    iput p5, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    .line 86
    iput p6, p0, Lcom/android/server/wm/BarController;->mStatusBarManagerId:I

    .line 87
    iput p7, p0, Lcom/android/server/wm/BarController;->mTranslucentWmFlag:I

    .line 88
    iput p8, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    .line 89
    new-instance v0, Lcom/android/server/wm/BarController$BarHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BarController$BarHandler;-><init>(Lcom/android/server/wm/BarController;)V

    iput-object v0, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/BarController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BarController;

    .line 42
    iget v0, p0, Lcom/android/server/wm/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/BarController;)Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BarController;

    .line 42
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    return-object v0
.end method

.method private computeStateLw(ZZLcom/android/server/wm/WindowState;Z)I
    .locals 6
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Lcom/android/server/wm/WindowState;
    .param p4, "change"    # Z

    .line 214
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    .line 216
    .local v0, "vis":Z
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    .line 217
    .local v1, "anim":Z
    iget v2, p0, Lcom/android/server/wm/BarController;->mState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    if-nez p4, :cond_0

    if-nez v0, :cond_0

    .line 218
    return v3

    .line 219
    :cond_0
    iget v2, p0, Lcom/android/server/wm/BarController;->mState:I

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 220
    return v5

    .line 221
    :cond_1
    if-eqz p4, :cond_3

    .line 222
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    .line 223
    return v4

    .line 225
    :cond_2
    return v5

    .line 229
    .end local v0    # "vis":Z
    .end local v1    # "anim":Z
    :cond_3
    iget v0, p0, Lcom/android/server/wm/BarController;->mState:I

    return v0
.end method

.method private setTransientBarState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_2

    .line 319
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 320
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/BarController;->mLastTranslucent:J

    .line 322
    :cond_1
    iput p1, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    .line 325
    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 337
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "TRANSIENT_BAR_HIDING"

    return-object v0

    .line 338
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "TRANSIENT_BAR_SHOWING"

    return-object v0

    .line 339
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    return-object v0

    .line 340
    :cond_2
    if-nez p0, :cond_3

    const-string v0, "TRANSIENT_BAR_NONE"

    return-object v0

    .line 341
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .locals 2
    .param p1, "state"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/BarController;->mState:I

    if-eq p1, v0, :cond_0

    .line 234
    iput p1, p0, Lcom/android/server/wm/BarController;->mState:I

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/BarController$1;-><init>(Lcom/android/server/wm/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method adjustSystemUiVisibilityLw(II)V
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    and-int v1, p1, v0

    if-eqz v1, :cond_1

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 146
    :cond_1
    :goto_0
    return-void
.end method

.method applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    .line 150
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    .line 152
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 153
    .local v0, "fl":I
    iget v1, p0, Lcom/android/server/wm/BarController;->mTranslucentWmFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 154
    iget v1, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v1

    goto :goto_0

    .line 156
    :cond_0
    iget v1, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    .line 158
    :goto_0
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget v1, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    or-int/2addr p2, v1

    goto :goto_1

    .line 162
    :cond_1
    iget v1, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    not-int v1, v1

    and-int/2addr p2, v1

    .line 164
    .end local v0    # "fl":I
    :goto_1
    goto :goto_2

    .line 165
    :cond_2
    iget v0, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    not-int v1, v0

    and-int/2addr v1, p2

    and-int/2addr v0, p3

    or-int p2, v1, v0

    .line 166
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    not-int v1, v0

    and-int/2addr v1, p2

    and-int/2addr v0, p3

    or-int p2, v1, v0

    .line 169
    :cond_3
    :goto_2
    return p2
.end method

.method checkHiddenLw()Z
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->updateStateLw(I)Z

    .line 255
    :cond_0
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    invoke-direct {p0, v1}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 258
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mPendingShow:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p0, v2}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 260
    iput-boolean v1, p0, Lcom/android/server/wm/BarController;->mPendingShow:Z

    .line 262
    :cond_1
    return v2

    .line 265
    :cond_2
    return v1
.end method

.method checkShowTransientBarLw()Z
    .locals 3

    .line 269
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 271
    return v1

    .line 272
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 274
    return v1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_2

    .line 277
    return v1

    .line 278
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    return v1

    .line 282
    :cond_3
    return v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mState"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 355
    iget v2, p0, Lcom/android/server/wm/BarController;->mState:I

    invoke-static {v2}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 357
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/wm/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContentFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 360
    :cond_0
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 330
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isTransientShowRequested()Z
    .locals 2

    .line 129
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTransientShowing()Z
    .locals 2

    .line 125
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 173
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method setBarShowingLw(Z)Z
    .locals 9
    .param p1, "show"    # Z

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 179
    iput-boolean v0, p0, Lcom/android/server/wm/BarController;->mPendingShow:Z

    .line 180
    return v1

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    .line 183
    .local v2, "wasVis":Z
    iget-object v3, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    .line 184
    .local v3, "wasAnim":Z
    invoke-virtual {p0}, Lcom/android/server/wm/BarController;->skipAnimation()Z

    move-result v4

    .line 185
    .local v4, "skipAnim":Z
    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    if-nez v6, :cond_2

    if-nez v4, :cond_2

    move v6, v0

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    move-result v5

    goto :goto_2

    .line 186
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    move v6, v0

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    move-result v5

    :goto_2
    nop

    .line 187
    .local v5, "change":Z
    iput-boolean v1, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    .line 188
    iget-object v6, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v3, v6, v5}, Lcom/android/server/wm/BarController;->computeStateLw(ZZLcom/android/server/wm/WindowState;Z)I

    move-result v6

    .line 189
    .local v6, "state":I
    invoke-direct {p0, v6}, Lcom/android/server/wm/BarController;->updateStateLw(I)Z

    move-result v7

    .line 191
    .local v7, "stateChanged":Z
    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    if-eqz v8, :cond_5

    .line 192
    iget-object v8, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 195
    :cond_5
    if-nez v5, :cond_7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    move v0, v1

    :cond_7
    :goto_3
    return v0
.end method

.method setContentFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    return-void
.end method

.method setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;
    .param p2, "invokeWithState"    # Z

    .line 200
    iput-object p1, p0, Lcom/android/server/wm/BarController;->mVisibilityChangeListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    .line 201
    if-eqz p2, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mHandler:Landroid/os/Handler;

    .line 204
    iget v1, p0, Lcom/android/server/wm/BarController;->mState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 203
    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    :cond_1
    return-void
.end method

.method setShowTransparent(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    .line 106
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_0

    .line 107
    iput-boolean p1, p0, Lcom/android/server/wm/BarController;->mShowTransparent:Z

    .line 108
    iput-boolean p1, p0, Lcom/android/server/wm/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BarController;->mNoAnimationOnNextShow:Z

    .line 111
    :cond_0
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    .line 94
    return-void
.end method

.method showTransient()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->isZenModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 122
    :cond_0
    return-void
.end method

.method protected skipAnimation()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method updateVisibilityLw(ZII)I
    .locals 2
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/BarController;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    return p3

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/BarController;->isTransientShowRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    :cond_1
    if-eqz p1, :cond_3

    .line 290
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 291
    and-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 292
    iget v0, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 294
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    goto :goto_0

    .line 296
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/wm/BarController;->setTransientBarState(I)V

    .line 299
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mShowTransparent:Z

    if-eqz v0, :cond_5

    .line 300
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    or-int/2addr p3, v0

    .line 301
    iget-boolean v0, p0, Lcom/android/server/wm/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v0, :cond_5

    .line 302
    iget v0, p0, Lcom/android/server/wm/BarController;->mUnhideFlag:I

    or-int/2addr p3, v0

    .line 303
    iput-boolean v1, p0, Lcom/android/server/wm/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 306
    :cond_5
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    if-eqz v0, :cond_6

    .line 307
    iget v0, p0, Lcom/android/server/wm/BarController;->mTransientFlag:I

    or-int/2addr p3, v0

    .line 308
    and-int/lit8 p3, p3, -0x2

    .line 310
    :cond_6
    iget v0, p0, Lcom/android/server/wm/BarController;->mTranslucentFlag:I

    and-int v1, p3, v0

    if-nez v1, :cond_7

    and-int/2addr v0, p2

    if-nez v0, :cond_7

    or-int v0, p3, p2

    iget v1, p0, Lcom/android/server/wm/BarController;->mTransparentFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 312
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/BarController;->mLastTranslucent:J

    .line 314
    :cond_8
    return p3
.end method

.method wasRecentlyTranslucent()Z
    .locals 4

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 345
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 346
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/BarController;->mState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 347
    iget v2, p0, Lcom/android/server/wm/BarController;->mTransientBarState:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 348
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 349
    return-void
.end method
