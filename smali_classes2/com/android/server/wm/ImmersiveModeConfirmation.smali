.class public Lcom/android/server/wm/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ImmersiveModeConfirmation$H;,
        Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"

.field private static sConfirmed:Z


# instance fields
.field private mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirm:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

.field private mLockTaskState:I

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private final mShowDelayMs:J

.field private mVrModeEnabled:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "vrModeEnabled"    # Z

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 371
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 87
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 88
    .local v1, "uiContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_0

    .line 89
    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 90
    new-instance v2, Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 91
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0069

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 94
    iput-boolean p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleShow()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 63
    sput-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 63
    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->saveSetting(Landroid/content/Context;)V

    return-void
.end method

.method private getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .line 202
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 202
    return-object v0
.end method

.method private getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 185
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e1

    const v4, 0x1000120

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 193
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 194
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 195
    const-string v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    const v1, 0x10302fa

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 197
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 198
    return-object v0
.end method

.method private getNavBarExitDuration()J
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v1, 0x10a0027

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 99
    .local v0, "exit":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 352
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private handleHide()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 182
    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 3

    .line 360
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 363
    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    .line 367
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 368
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    return-void
.end method

.method static loadSetting(ILandroid/content/Context;)Z
    .locals 6
    .param p0, "currentUserId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 104
    .local v0, "wasConfirmed":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 106
    const/4 v2, 0x0

    .line 108
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "immersive_mode_confirmations"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 111
    const-string v3, "confirmed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v3

    .line 114
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading confirmations, value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImmersiveModeConfirmation"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eq v3, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static saveSetting(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz v0, :cond_0

    const-string v0, "confirmed"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    nop

    .end local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error saving confirmations, sConfirmed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImmersiveModeConfirmation"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method


# virtual methods
.method confirmCurrentPrompt()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_0
    return-void
.end method

.method getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method immersiveModeChangedLw(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isImmersiveMode"    # Z
    .param p3, "userSetupComplete"    # Z
    .param p4, "navBarEmpty"    # Z

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 136
    if-eqz p2, :cond_1

    .line 137
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    move-result v0

    .line 140
    .local v0, "disabled":Z
    if-nez v0, :cond_0

    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-nez v2, :cond_0

    if-nez p4, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    if-eq v2, v1, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-wide v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    .end local v0    # "disabled":Z
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 152
    :goto_0
    return-void
.end method

.method onLockTaskModeChangedLw(I)V
    .locals 0
    .param p1, "lockTaskState"    # I

    .line 413
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 414
    return-void
.end method

.method onPowerKeyDown(ZJZZ)Z
    .locals 5
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z
    .param p5, "navBarEmpty"    # Z

    .line 156
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 160
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    if-nez p5, :cond_2

    .line 162
    iput-wide p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_0

    .line 164
    :cond_2
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    .line 166
    :goto_0
    return v0
.end method

.method onVrStateChangedLw(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 405
    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 406
    if-eqz p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 410
    :cond_0
    return-void
.end method
