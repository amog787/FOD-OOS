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

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 369
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 86
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 87
    .local v1, "uiContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_0

    .line 88
    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 89
    new-instance v2, Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0063

    .line 92
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 93
    iput-boolean p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 62
    invoke-static {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->saveSetting(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/ImmersiveModeConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 62
    sput-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .line 200
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 200
    return-object v0
.end method

.method private getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 184
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const v4, 0x1000120

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 192
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 193
    const-string v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    const v1, 0x10302fa

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 195
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 196
    return-object v0
.end method

.method private getNavBarExitDuration()J
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v1, 0x10a00ae

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 98
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

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 350
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private handleHide()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 181
    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 3

    .line 358
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    .line 365
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 366
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    return-void
.end method

.method static loadSetting(ILandroid/content/Context;)Z
    .locals 6
    .param p0, "currentUserId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 103
    .local v0, "wasConfirmed":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "immersive_mode_confirmations"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 110
    const-string v3, "confirmed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    goto :goto_0

    .line 112
    :catchall_0
    move-exception v3

    .line 113
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

    .line 115
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

    .line 121
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-eqz v0, :cond_0

    const-string v0, "confirmed"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "immersive_mode_confirmations"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    nop

    .end local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    .line 128
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

    .line 130
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method


# virtual methods
.method confirmCurrentPrompt()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_0
    return-void
.end method

.method getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method immersiveModeChangedLw(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isImmersiveMode"    # Z
    .param p3, "userSetupComplete"    # Z
    .param p4, "navBarEmpty"    # Z

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 135
    if-eqz p2, :cond_1

    .line 136
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    move-result v0

    .line 139
    .local v0, "disabled":Z
    if-nez v0, :cond_0

    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-nez v2, :cond_0

    if-nez p4, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    if-eq v2, v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    iget-wide v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    .end local v0    # "disabled":Z
    :cond_0
    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 151
    :goto_0
    return-void
.end method

.method onLockTaskModeChangedLw(I)V
    .locals 0
    .param p1, "lockTaskState"    # I

    .line 411
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mLockTaskState:I

    .line 412
    return-void
.end method

.method onPowerKeyDown(ZJZZ)Z
    .locals 5
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z
    .param p5, "navBarEmpty"    # Z

    .line 155
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 159
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    if-nez p5, :cond_2

    .line 161
    iput-wide p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_0

    .line 163
    :cond_2
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    .line 165
    :goto_0
    return v0
.end method

.method onVrStateChangedLw(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 403
    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    .line 404
    iget-boolean v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 408
    :cond_0
    return-void
.end method
