.class Lcom/android/server/wm/PinnedStackController;
.super Ljava/lang/Object;
.source "PinnedStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;,
        Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRatio:F

.field private final mCallbacks:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private mImeHeight:I

.field private mIsImeShowing:Z

.field private mIsPipWindowingModeChanging:Z

.field private mMaxAspectRatio:F

.field private mMinAspectRatio:F

.field private mPinnedStackListener:Landroid/view/IPinnedStackListener;

.field private final mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    .line 66
    new-instance v0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;-><init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mCallbacks:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    .line 76
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    .line 79
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 86
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    .line 116
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 117
    iput-object p2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 119
    invoke-direct {p0}, Lcom/android/server/wm/PinnedStackController;->reloadResources()V

    .line 120
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/PinnedStackController;)Landroid/view/DisplayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/PinnedStackController;)Landroid/view/IPinnedStackListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/PinnedStackController;Landroid/view/IPinnedStackListener;)Landroid/view/IPinnedStackListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;
    .param p1, "x1"    # Landroid/view/IPinnedStackListener;

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    return-object v0
.end method

.method private notifyActionsChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/view/IPinnedStackListener;->onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering actions changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyAspectRatioChanged(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/IPinnedStackListener;->onAspectRatioChanged(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering aspect ratio changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifyDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .locals 3
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/IPinnedStackListener;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering DisplayInfo changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifyImeVisibilityChanged(ZI)V
    .locals 3
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/view/IPinnedStackListener;->onImeVisibilityChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering bounds changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyMovementBoundsChanged(Z)V
    .locals 4
    .param p1, "fromImeAdjustment"    # Z

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 301
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-nez v1, :cond_0

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 305
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    invoke-interface {v1, p1}, Landroid/view/IPinnedStackListener;->onMovementBoundsChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WindowManager"

    const-string v3, "Error delivering actions changed event."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reloadResources()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    const v1, 0x10500b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedStackController;->mMinAspectRatio:F

    .line 134
    const v1, 0x10500b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedStackController;->mMaxAspectRatio:F

    .line 136
    return-void
.end method

.method private setDisplayInfo(Landroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 193
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PinnedStackController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsImeShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMinAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mMinAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMaxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mMaxAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActions=[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActions=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    .line 337
    .local v1, "action":Landroid/app/RemoteAction;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Action["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    const-string v2, ""

    invoke-virtual {v1, v2, p2}, Landroid/app/RemoteAction;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 335
    .end local v1    # "action":Landroid/app/RemoteAction;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method getAspectRatio()F
    .locals 1

    .line 247
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    return v0
.end method

.method isPipActiveOrWindowingModeChanging()Z
    .locals 3

    .line 165
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedStackController;->mIsPipWindowingModeChanging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 166
    return v1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 169
    .local v0, "pinnedTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isValidPictureInPictureAspectRatio(F)Z
    .locals 1
    .param p1, "aspectRatio"    # F

    .line 159
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mMaxAspectRatio:F

    .line 160
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0
.end method

.method onActivityHidden(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/IPinnedStackListener;->onActivityHidden(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering reset reentry fraction event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method onConfigurationChanged()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/server/wm/PinnedStackController;->reloadResources()V

    .line 124
    return-void
.end method

.method onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 202
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->setDisplayInfo(Landroid/view/DisplayInfo;)V

    .line 203
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(Z)V

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method registerPinnedStackListener(Landroid/view/IPinnedStackListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/IPinnedStackListener;

    .line 143
    :try_start_0
    invoke-interface {p1}, Landroid/view/IPinnedStackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mCallbacks:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    invoke-interface {p1, v0}, Landroid/view/IPinnedStackListener;->onListenerRegistered(Landroid/view/IPinnedStackController;)V

    .line 145
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PinnedStackController;->notifyImeVisibilityChanged(ZI)V

    .line 148
    invoke-direct {p0, v2}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyActionsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to register pinned stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyActionsChanged(Ljava/util/List;)V

    .line 259
    return-void
.end method

.method setAdjustedForIme(ZI)V
    .locals 3
    .param p1, "adjustedForIme"    # Z
    .param p2, "imeHeight"    # I

    .line 215
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 216
    .local v2, "imeShowing":Z
    :goto_0
    if-eqz v2, :cond_1

    move v1, p2

    :cond_1
    move p2, v1

    .line 217
    iget-boolean v1, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    if-ne v2, v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    if-ne p2, v1, :cond_2

    .line 218
    return-void

    .line 221
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    .line 222
    iput p2, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    .line 226
    invoke-static {v2, p2}, Lcom/android/server/wm/OpQuickReplyInjector;->notifyImeVisibilityChanged(ZI)V

    .line 228
    invoke-direct {p0, v2, p2}, Lcom/android/server/wm/PinnedStackController;->notifyImeVisibilityChanged(ZI)V

    .line 229
    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(Z)V

    .line 230
    return-void
.end method

.method setAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .line 236
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iput p1, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    .line 238
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->notifyAspectRatioChanged(F)V

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(Z)V

    .line 241
    :cond_0
    return-void
.end method

.method setPipWindowingModeChanging(Z)V
    .locals 0
    .param p1, "isPipWindowingModeChanging"    # Z

    .line 174
    iput-boolean p1, p0, Lcom/android/server/wm/PinnedStackController;->mIsPipWindowingModeChanging:Z

    .line 175
    return-void
.end method
