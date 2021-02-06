.class Lcom/android/server/wm/WindowToken;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowToken$DeathRecipient;,
        Lcom/android/server/wm/WindowToken$FixedRotationTransformState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field hasVisible:Z

.field private mBinderDied:Z

.field private mDeathRecipient:Lcom/android/server/wm/WindowToken$DeathRecipient;

.field private mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

.field final mFromClientToken:Z

.field private mLastReportedConfig:Landroid/content/res/Configuration;

.field private mLastReportedDisplay:I

.field final mOwnerCanManageAppTokens:Z

.field private final mOwnerUid:I

.field mPersistOnEmpty:Z

.field final mRoundedCornerOverlay:Z

.field private final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field paused:Z

.field stringName:Ljava/lang/String;

.field final token:Landroid/os/IBinder;

.field waitingToShow:Z

.field final windowType:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "persistOnEmpty"    # Z
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "ownerCanManageAppTokens"    # Z

    .line 223
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V

    .line 225
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZIZZ)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "persistOnEmpty"    # Z
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "ownerCanManageAppTokens"    # Z
    .param p7, "ownerUid"    # I
    .param p8, "roundedCornerOverlay"    # Z
    .param p9, "fromClientToken"    # Z

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 107
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowToken;->mLastReportedDisplay:I

    .line 116
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mBinderDied:Z

    .line 205
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0;-><init>(Lcom/android/server/wm/WindowToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Ljava/util/Comparator;

    .line 237
    iput-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 238
    iput p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 239
    iput-boolean p4, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 240
    iput-boolean p6, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 241
    iput p7, p0, Lcom/android/server/wm/WindowToken;->mOwnerUid:I

    .line 242
    iput-boolean p8, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 243
    iput-boolean p9, p0, Lcom/android/server/wm/WindowToken;->mFromClientToken:Z

    .line 244
    if-eqz p5, :cond_0

    .line 245
    invoke-virtual {p5, p2, p0}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowToken;->shouldReportToClient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/server/wm/WindowToken$DeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/WindowToken$DeathRecipient;-><init>(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken$1;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->mDeathRecipient:Lcom/android/server/wm/WindowToken$DeathRecipient;

    .line 250
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken$DeathRecipient;->linkToDeath()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window token with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->mDeathRecipient:Lcom/android/server/wm/WindowToken$DeathRecipient;

    .line 255
    return-void

    .line 258
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "type"    # I
    .param p4, "persistOnEmpty"    # Z
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "ownerCanManageAppTokens"    # Z
    .param p7, "roundedCornerOverlay"    # Z

    .line 229
    const/4 v7, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZIZZ)V

    .line 231
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wm/WindowToken;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowToken;
    .param p1, "x1"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken;->mBinderDied:Z

    return p1
.end method

.method private cancelFixedRotationTransform()V
    .locals 3

    .line 667
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 668
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-nez v0, :cond_0

    .line 670
    return-void

    .line 672
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowToken;->notifyFixedRotationTransform(Z)V

    .line 673
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 674
    .local v1, "originalRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 675
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowToken;->onCancelFixedRotationTransform(I)V

    .line 676
    return-void
.end method

.method private cleanUpFixedRotationTransformState(Z)V
    .locals 2
    .param p1, "replacing"    # Z

    .line 618
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 623
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 624
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowToken;->notifyFixedRotationTransform(Z)V

    .line 625
    return-void
.end method

.method private notifyFixedRotationTransform(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .line 629
    const/4 v0, 0x0

    .line 632
    .local v0, "adjustments":Landroid/view/DisplayAdjustments$FixedRotationAdjustments;
    const/4 v1, 0x0

    .line 633
    .local v1, "notifiedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowProcessController;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_7

    .line 634
    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 636
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 639
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_0

    .line 640
    goto :goto_4

    .line 642
    :cond_0
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 643
    .local v4, "app":Lcom/android/server/wm/WindowProcessController;
    goto :goto_1

    .line 644
    .end local v4    # "app":Lcom/android/server/wm/WindowProcessController;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 646
    .restart local v4    # "app":Lcom/android/server/wm/WindowProcessController;
    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v5

    if-nez v5, :cond_2

    .line 647
    goto :goto_4

    .line 649
    :cond_2
    if-nez v1, :cond_4

    .line 650
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 651
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->createFixedRotationAdjustmentsIfNeeded()Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    move-object v0, v5

    goto :goto_3

    .line 652
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 653
    goto :goto_4

    .line 655
    :cond_5
    :goto_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v5

    .line 658
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v7, v0}, Landroid/app/servertransaction/FixedRotationAdjustmentsItem;->obtain(Landroid/os/IBinder;Landroid/view/DisplayAdjustments$FixedRotationAdjustments;)Landroid/app/servertransaction/FixedRotationAdjustmentsItem;

    move-result-object v7

    .line 657
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    goto :goto_4

    .line 659
    :catch_0
    move-exception v5

    .line 660
    .local v5, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to schedule DisplayAdjustmentsItem to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    .end local v4    # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 663
    .end local v2    # "i":I
    :cond_7
    return-void
.end method

.method private reportWindowTokenRemovedToClient()V
    .locals 7

    .line 393
    invoke-direct {p0}, Lcom/android/server/wm/WindowToken;->shouldReportToClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDeathRecipient:Lcom/android/server/wm/WindowToken$DeathRecipient;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken$DeathRecipient;->unlinkToDeath()V

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/IWindowToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWindowToken;

    move-result-object v0

    .line 399
    .local v0, "windowTokenClient":Landroid/app/IWindowToken;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IWindowToken;->onWindowTokenRemoved()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_ERROR_enabled:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x31fb93ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    const-string v6, "Could not report token removal to the window token client."

    invoke-static {v2, v3, v4, v6, v5}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 403
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private shouldReportToClient()Z
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mFromClientToken:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mBinderDied:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addWindow(Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 325
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x48b19ef7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v4

    aput-object v5, v8, v3

    invoke-static {v6, v7, v4, v2, v8}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 328
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    .line 335
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowToken;->createSurfaceControl(Z)V

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 338
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0xe6c0a93

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v5, v1, v3

    invoke-static {v6, v7, v4, v2, v1}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowToken;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 343
    :cond_4
    return-void
.end method

.method adjustWindowParams(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 729
    return-void
.end method

.method applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowToken;->cleanUpFixedRotationTransformState(Z)V

    .line 536
    :cond_0
    new-instance v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 537
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;-><init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 538
    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mInsetsState:Landroid/view/InsetsState;

    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v3, v3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mBarContentFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Landroid/util/SparseArray;)V

    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 543
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowToken;->notifyFixedRotationTransform(Z)V

    .line 544
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 463
    iget v0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v1, 0x7f2

    if-ne v0, v1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 466
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x1

    .line 465
    invoke-super {p0, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    goto :goto_0

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v0, :cond_1

    .line 468
    const v0, 0x40000002    # 2.0000005f

    invoke-super {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 472
    :goto_0
    return-void
.end method

.method canLayerAboveSystemBars()Z
    .locals 4

    .line 791
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    .line 793
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    const/16 v3, 0x7e3

    invoke-interface {v1, v3, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v1

    .line 795
    .local v1, "navLayer":I
    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    if-eqz v2, :cond_0

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method createFixedRotationAdjustmentsIfNeeded()Landroid/view/DisplayAdjustments$FixedRotationAdjustments;
    .locals 3

    .line 687
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    const/4 v0, 0x0

    return-object v0

    .line 690
    :cond_0
    new-instance v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v1, v1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-direct {v0, v1, v2}, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;-><init>(ILandroid/view/DisplayCutout;)V

    return-object v0
.end method

.method createSurfaceControl(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 347
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mFromClientToken:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 348
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->createSurfaceControl(Z)V

    .line 350
    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 754
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 755
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 756
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 757
    const-string v0, " hasVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 758
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v0, :cond_0

    .line 759
    const-string v0, " waitingToShow=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 762
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    const-string v0, "fixedRotationConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 767
    :cond_1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 736
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    return-void

    .line 740
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 741
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 742
    const-wide v2, 0x10500000002L

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 743
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 744
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 745
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 746
    return-void
.end method

.method finishFixedRotationTransform()V
    .locals 1

    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Ljava/lang/Runnable;)V

    .line 585
    return-void
.end method

.method finishFixedRotationTransform(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "applyDisplayRotation"    # Ljava/lang/Runnable;

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 593
    .local v0, "state":Lcom/android/server/wm/WindowToken$FixedRotationTransformState;
    if-nez v0, :cond_0

    .line 594
    return-void

    .line 597
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->resetTransform()V

    .line 600
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    .line 601
    if-eqz p1, :cond_1

    .line 602
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 605
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 606
    iget-object v3, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    invoke-direct {v3}, Lcom/android/server/wm/WindowToken;->cancelFixedRotationTransform()V

    .line 605
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 611
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 612
    iget-object v3, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    invoke-direct {v3, v1}, Lcom/android/server/wm/WindowToken;->cleanUpFixedRotationTransformState(Z)V

    .line 611
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 615
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method getFixedRotationBarContentFrame(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "windowType"    # I

    .line 521
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mBarContentFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0

    .line 523
    :cond_0
    const/4 v0, 0x0

    .line 521
    :goto_0
    return-object v0
.end method

.method getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_0
    const/4 v0, 0x0

    .line 514
    :goto_0
    return-object v0
.end method

.method getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;
    .locals 1

    .line 510
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayInfo:Landroid/view/DisplayInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getFixedRotationTransformInsetsState()Landroid/view/InsetsState;
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mInsetsState:Landroid/view/InsetsState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 783
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOwnerUid()I
    .locals 1

    .line 803
    iget v0, p0, Lcom/android/server/wm/WindowToken;->mOwnerUid:I

    return v0
.end method

.method getProtoFieldId()J
    .locals 2

    .line 750
    const-wide v0, 0x10b00000007L

    return-wide v0
.end method

.method getReplacingWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 360
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 361
    .local v2, "replacing":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_0

    .line 362
    return-object v2

    .line 358
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "replacing":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 365
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSizeCompatScale()F
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    return v0
.end method

.method getWindowLayerFromType()I
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method hasAnimatingFixedRotationTransition()Z
    .locals 5

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 570
    return v1

    .line 573
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 574
    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v3, v3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 575
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 576
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    return v2

    .line 573
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 580
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method hasFixedRotationTransform()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasFixedRotationTransform(Lcom/android/server/wm/WindowToken;)Z
    .locals 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    if-eq p0, p1, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 490
    :cond_3
    :goto_0
    return v1
.end method

.method isEmpty()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isFinishingFixedRotationTransform()Z
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "existingWindow"    # Lcom/android/server/wm/WindowState;

    .line 321
    iget v0, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v1, p2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFixedRotationTransforming()Z
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$WindowToken(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 5
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "existingWindow"    # Lcom/android/server/wm/WindowState;

    .line 207
    move-object v0, p0

    .line 208
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const-string v2, " is not a child of token="

    if-ne v1, v0, :cond_2

    .line 213
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v1, v0, :cond_1

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 214
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "existingWindow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newWindow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V
    .locals 3
    .param p1, "other"    # Lcom/android/server/wm/WindowToken;

    .line 551
    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 552
    .local v0, "fixedRotationState":Lcom/android/server/wm/WindowToken$FixedRotationTransformState;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 556
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowToken;->cleanUpFixedRotationTransformState(Z)V

    .line 558
    :cond_1
    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 559
    iget-object v1, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 561
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowToken;->notifyFixedRotationTransform(Z)V

    .line 562
    return-void

    .line 553
    :cond_2
    :goto_0
    return-void
.end method

.method makeSurface()Landroid/view/SurfaceControl$Builder;
    .locals 2

    .line 476
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 477
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v1, :cond_0

    .line 478
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 480
    :cond_0
    return-object v0
.end method

.method onCancelFixedRotationTransform(I)V
    .locals 0
    .param p1, "originalDisplayRotation"    # I

    .line 684
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 419
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 420
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->reportConfigToWindowTokenClient()V

    .line 421
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 407
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->reParentWindowToken(Lcom/android/server/wm/WindowToken;)V

    .line 413
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->reportConfigToWindowTokenClient()V

    .line 415
    return-void
.end method

.method removeAllWindowsIfPossible()V
    .locals 9

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 262
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 263
    .local v2, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x3672d0a1

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 265
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 261
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 267
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method removeImmediately()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    .line 387
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 389
    invoke-direct {p0}, Lcom/android/server/wm/WindowToken;->reportWindowTokenRemovedToClient()V

    .line 390
    return-void
.end method

.method reportConfigToWindowTokenClient()V
    .locals 9

    .line 424
    invoke-direct {p0}, Lcom/android/server/wm/WindowToken;->shouldReportToClient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mLastReportedConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_1

    .line 428
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 431
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 432
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mLastReportedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/wm/WindowToken;->mLastReportedDisplay:I

    if-ne v1, v2, :cond_2

    .line 434
    return-void

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mLastReportedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 438
    iput v1, p0, Lcom/android/server/wm/WindowToken;->mLastReportedDisplay:I

    .line 440
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/app/IWindowToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWindowToken;

    move-result-object v2

    .line 442
    .local v2, "windowTokenClient":Landroid/app/IWindowToken;
    :try_start_0
    invoke-interface {v2, v0, v1}, Landroid/app/IWindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    goto :goto_0

    .line 443
    :catch_0
    move-exception v3

    .line 444
    .local v3, "e":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_ERROR_enabled:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x261b0838

    const/4 v6, 0x0

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    const-string v8, "Could not report config changes to the window token client."

    invoke-static {v4, v5, v6, v8, v7}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 447
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-void
.end method

.method resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 719
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    .line 722
    :cond_0
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 696
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 697
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v1, v1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 703
    :cond_0
    return-void
.end method

.method setExiting()V
    .locals 7

    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 272
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 278
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 283
    .local v1, "count":I
    const/4 v2, 0x0

    .line 284
    .local v2, "changed":Z
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowToken;->isAnimating(I)Z

    move-result v3

    .line 286
    .local v3, "delayed":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 287
    iget-object v5, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 288
    .local v5, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->onSetAppExiting()Z

    move-result v6

    or-int/2addr v2, v6

    .line 286
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 291
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 292
    .local v4, "app":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_3

    .line 293
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 296
    :cond_3
    if-eqz v2, :cond_4

    .line 297
    iget-object v5, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 298
    iget-object v5, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 301
    :cond_4
    if-eqz v3, :cond_5

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 778
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 707
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 708
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->transform(Lcom/android/server/wm/WindowContainer;)V

    .line 713
    :cond_0
    return-void
.end method

.method windowsCanBeWallpaperTarget()Z
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 372
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 373
    return v1

    .line 370
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 377
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
