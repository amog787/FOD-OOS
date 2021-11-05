.class Lcom/android/server/wm/WindowSurfaceController;
.super Ljava/lang/Object;
.source "WindowSurfaceController.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field final mAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mBLASTSurfaceControl:Landroid/view/SurfaceControl;

.field mChildrenDetached:Z

.field private mHiddenForCrop:Z

.field private mHiddenForOtherReasons:Z

.field private mLastDsdx:F

.field private mLastDsdy:F

.field private mLastDtdx:F

.field private mLastDtdy:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceCrop:Landroid/graphics/Rect;

.field private mSurfaceH:I

.field private mSurfaceLayer:I

.field private mSurfaceShown:Z

.field private mSurfaceW:I

.field private mSurfaceX:F

.field private mSurfaceY:F

.field private final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindowSession:Lcom/android/server/wm/Session;

.field private final mWindowType:I

.field private final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "format"    # I
    .param p5, "flags"    # I
    .param p6, "animator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p7, "windowType"    # I
    .param p8, "ownerUid"    # I

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 71
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 72
    iput v7, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    .line 73
    iput v6, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 74
    iput v6, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 75
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, -0x1

    invoke-direct {v8, v6, v6, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    .line 78
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 79
    iput v7, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 80
    iput v7, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 81
    iput v8, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 83
    iput v7, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 85
    iput v6, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    .line 90
    iput-boolean v6, v0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 93
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 108
    iput-object v4, v0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 110
    iput v2, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 111
    iput v3, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 113
    iput-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 115
    iget-object v8, v4, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v8, v0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 116
    iget-object v8, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 117
    .local v8, "win":Lcom/android/server/wm/WindowState;
    iput v5, v0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    .line 118
    iget-object v9, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v9, v0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 119
    iget-object v9, v0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceControl$Transaction;

    iput-object v9, v0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 121
    const-wide/16 v9, 0x20

    const-string v11, "new SurfaceControl"

    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 122
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 123
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 124
    invoke-virtual {v11, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 125
    invoke-virtual {v11, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 126
    move/from16 v12, p4

    invoke-virtual {v11, v12}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 127
    move/from16 v13, p5

    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 128
    const/4 v14, 0x2

    invoke-virtual {v11, v14, v5}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 129
    move/from16 v14, p8

    invoke-virtual {v11, v7, v14}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 130
    const-string v15, "WindowSurfaceController"

    invoke-virtual {v11, v15}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v11

    .line 132
    .local v11, "b":Landroid/view/SurfaceControl$Builder;
    iget-object v7, v0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mUseBLAST:Z

    if-eqz v7, :cond_0

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v16, 0x2000000

    and-int v7, v7, v16

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v6

    .line 134
    .local v7, "useBLAST":Z
    :goto_0
    if-eqz v7, :cond_1

    .line 135
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 138
    :cond_1
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 140
    if-eqz v7, :cond_2

    .line 141
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 142
    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(BLAST)"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-virtual {v9, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 144
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 145
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 146
    invoke-virtual {v6, v15}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 147
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/WindowSurfaceController;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 150
    :cond_2
    const-wide/16 v9, 0x20

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 151
    return-void
.end method

.method private hideSurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 187
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v2, "HIDE"

    invoke-static {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_1
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception hiding surface in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private showSurface()Z
    .locals 5

    .line 469
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 470
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 474
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHOW alpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 475
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-static {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 481
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_1

    .line 482
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpQuickReplyInjector;->notifyImeShow(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_1
    return v1

    .line 487
    :catch_0
    move-exception v2

    .line 488
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure showing surface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v2    # "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "show"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 493
    return v0
.end method

.method private updateVisibility()Z
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-nez v0, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->showSurface()Z

    move-result v0

    return v0

    .line 462
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 453
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 457
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method clearCropInTransaction(Z)V
    .locals 7
    .param p1, "recoveringMemory"    # Z

    .line 238
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x1be1348

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, -0x1

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    .local v0, "clipRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    return-void

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 245
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v0    # "clipRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting clearing crop of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    if-nez p1, :cond_2

    .line 249
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "crop"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 252
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-void
.end method

.method clearWindowContentFrameStats()Z
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    return v0

    .line 512
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->clearContentFrameStats()Z

    move-result v0

    return v0
.end method

.method deferTransactionUntil(Landroid/view/SurfaceControl;J)V
    .locals 1
    .param p1, "barrier"    # Landroid/view/SurfaceControl;
    .param p2, "frame"    # J

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/SurfaceControl;J)V

    .line 499
    return-void
.end method

.method destroyNotInTransaction()V
    .locals 8

    .line 196
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x335c9d71    # -8.5660792E7f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v4, v5, v2, v1, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 199
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 206
    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    .line 208
    :goto_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    goto :goto_1

    .line 205
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error destroying surface in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 206
    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    .line 208
    goto :goto_0

    .line 211
    :cond_2
    :goto_1
    return-void

    .line 205
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 206
    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 207
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 210
    :cond_3
    throw v0
.end method

.method detachChildren()V
    .locals 5

    .line 161
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0x7574a5c

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mChildrenDetached:Z

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->detachChildren()V

    .line 166
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 611
    if-eqz p3, :cond_0

    .line 612
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 614
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 615
    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 616
    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 617
    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 618
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 619
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 620
    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 621
    const-string v0, " transform=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 623
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 604
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 605
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 606
    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 607
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 608
    return-void
.end method

.method forceScaleableInTransaction(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 504
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 505
    .local v0, "scalingMode":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setOverrideScalingMode(I)V

    .line 506
    return-void
.end method

.method getBLASTSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "outSurfaceControl"    # Landroid/view/SurfaceControl;

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 533
    const-string v1, "WindowSurfaceController.getBLASTSurfaceControl"

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 535
    :cond_0
    return-void
.end method

.method getClientViewRootSurface()Landroid/view/SurfaceControl;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 598
    return-object v0

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->getContainerRect(Landroid/graphics/Rect;)V

    .line 441
    return-void
.end method

.method getHeight()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    return v0
.end method

.method getLayer()I
    .locals 1

    .line 538
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    return v0
.end method

.method getShown()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    return v0
.end method

.method getSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "outSurfaceControl"    # Landroid/view/SurfaceControl;

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "WindowSurfaceController.getSurfaceControl"

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method getWidth()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    return v0
.end method

.method getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 1
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x0

    return v0

    .line 519
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method getX()F
    .locals 1

    .line 573
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    return v0
.end method

.method getY()F
    .locals 1

    .line 577
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    return v0
.end method

.method hasSurface()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 8
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "reason"    # Ljava/lang/String;

    .line 169
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x4b0b2788

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v2, v6, v1

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 173
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 176
    :cond_1
    return-void
.end method

.method prepareToShowInTransaction(FFFFFZ)Z
    .locals 4
    .param p1, "alpha"    # F
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dsdy"    # F
    .param p5, "dtdy"    # F
    .param p6, "recoveringMemory"    # Z

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 352
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 353
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 354
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 355
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 356
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 357
    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error updating surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    if-nez p6, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "update"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 365
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 368
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return v1
.end method

.method reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .locals 8
    .param p1, "other"    # Lcom/android/server/wm/WindowSurfaceController;

    .line 154
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x1a806e44

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->reparentChildren(Landroid/view/SurfaceControl;)V

    .line 158
    :cond_1
    return-void
.end method

.method setBufferSizeInTransaction(IIZ)Z
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "recoveringMemory"    # Z

    .line 323
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_1

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    move v6, v0

    .line 324
    .local v6, "surfaceResized":Z
    if-eqz v6, :cond_4

    .line 325
    iput v2, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 326
    iput v3, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 329
    :try_start_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_2

    int-to-long v7, v2

    .local v7, "protoLogParam0":J
    int-to-long v9, v3

    .local v9, "protoLogParam1":J
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam2":Ljava/lang/String;
    sget-object v11, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v12, 0x48b8e04e

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v5

    const/16 v16, 0x2

    aput-object v0, v15, v16

    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 330
    .end local v0    # "protoLogParam2":Ljava/lang/String;
    .end local v7    # "protoLogParam0":J
    .end local v9    # "protoLogParam1":J
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setBufferSize(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    nop

    .line 342
    return v5

    .line 331
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error resizing surface of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " size=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WindowManager"

    invoke-static {v8, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    if-nez p3, :cond_3

    .line 338
    iget-object v7, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v8, "size"

    invoke-virtual {v7, v8, v5}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 340
    :cond_3
    return v4

    .line 344
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4
    return v4
.end method

.method setColorSpaceAgnostic(Z)V
    .locals 11
    .param p1, "agnostic"    # Z

    .line 420
    const-string v0, "<<< CLOSE TRANSACTION setColorSpaceAgnosticLocked"

    const-string v1, "setColorSpaceAgnostic"

    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v2, :cond_0

    move v2, p1

    .local v2, "protoLogParam0":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x22dfdbf6

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 422
    .end local v2    # "protoLogParam0":Z
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_1

    .line 423
    return-void

    .line 425
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_2

    .line 426
    const-string v2, ">>> OPEN TRANSACTION setColorSpaceAgnosticLocked"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 430
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl;->setColorSpaceAgnostic(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 433
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    .line 434
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_3
    return-void

    .line 432
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 433
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    .line 434
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_4
    throw v2
.end method

.method setCropInTransaction(Landroid/graphics/Rect;Z)V
    .locals 8
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "recoveringMemory"    # Z

    .line 214
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x13512817

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    invoke-static {v4, v5, v2, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 222
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    goto :goto_0

    .line 224
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 226
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting crop surface of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " crop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    const-string v3, "WindowManager"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    if-nez p2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "crop"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 235
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_1
    return-void
.end method

.method setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V
    .locals 22
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dtdy"    # F
    .param p5, "dsdy"    # F
    .param p6, "recoveringMemory"    # Z

    .line 291
    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_1

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_1

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_1

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v13, v0

    .line 293
    .local v13, "matrixChanged":Z
    if-nez v13, :cond_2

    .line 294
    return-void

    .line 297
    :cond_2
    iput v8, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 298
    iput v9, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 299
    iput v10, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 300
    iput v11, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 303
    :try_start_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    float-to-double v3, v8

    .local v3, "protoLogParam0":D
    float-to-double v5, v9

    .local v5, "protoLogParam1":D
    float-to-double v14, v10

    move/from16 v17, v13

    .end local v13    # "matrixChanged":Z
    .local v14, "protoLogParam2":D
    .local v17, "matrixChanged":Z
    float-to-double v12, v11

    .local v12, "protoLogParam3":D
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam4":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    const/16 v18, 0x0

    aput-object v21, v2, v18

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const/16 v16, 0x1

    aput-object v18, v2, v16

    const/16 v18, 0x2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v2, v18

    const/16 v18, 0x3

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v2, v18

    const/16 v18, 0x4

    aput-object v0, v2, v18

    move-object/from16 v18, v0

    move-wide/from16 v19, v3

    const v0, 0x126b9102

    const/16 v3, 0xaa

    const/4 v4, 0x0

    .end local v0    # "protoLogParam4":Ljava/lang/String;
    .end local v3    # "protoLogParam0":D
    .local v18, "protoLogParam4":Ljava/lang/String;
    .local v19, "protoLogParam0":D
    invoke-static {v7, v0, v3, v4, v2}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 310
    .end local v5    # "protoLogParam1":D
    .end local v12    # "protoLogParam3":D
    .end local v14    # "protoLogParam2":D
    .end local v18    # "protoLogParam4":Ljava/lang/String;
    .end local v19    # "protoLogParam0":D
    :catch_0
    move-exception v0

    goto :goto_4

    .line 303
    .end local v17    # "matrixChanged":Z
    .restart local v13    # "matrixChanged":Z
    :cond_3
    move/from16 v17, v13

    .line 305
    .end local v13    # "matrixChanged":Z
    .restart local v17    # "matrixChanged":Z
    :goto_2
    if-nez p1, :cond_4

    .line 306
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_3

    .line 308
    :cond_4
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    :goto_3
    goto :goto_5

    .line 310
    .end local v17    # "matrixChanged":Z
    .restart local v13    # "matrixChanged":Z
    :catch_1
    move-exception v0

    move/from16 v17, v13

    .line 314
    .end local v13    # "matrixChanged":Z
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v17    # "matrixChanged":Z
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting matrix on surface surface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MATRIX ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    if-nez p6, :cond_5

    .line 317
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "matrix"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 320
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_5
    return-void
.end method

.method setMatrixInTransaction(FFFFZ)V
    .locals 7
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dtdy"    # F
    .param p4, "dsdy"    # F
    .param p5, "recoveringMemory"    # Z

    .line 286
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V

    .line 287
    return-void
.end method

.method setOpaque(Z)V
    .locals 11
    .param p1, "isOpaque"    # Z

    .line 388
    const-string v0, "<<< CLOSE TRANSACTION setOpaqueLocked"

    const-string v1, "setOpaqueLocked"

    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v2, :cond_0

    move v2, p1

    .local v2, "protoLogParam0":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x214ef67a

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 390
    .end local v2    # "protoLogParam0":Z
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_1

    .line 391
    return-void

    .line 393
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_2

    const-string v2, ">>> OPEN TRANSACTION setOpaqueLocked"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 396
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 399
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_3
    return-void

    .line 398
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 399
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_4
    throw v2
.end method

.method setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V
    .locals 17
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "recoveringMemory"    # Z

    .line 260
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    cmpl-float v0, v0, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_1

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v6

    :goto_1
    move v7, v0

    .line 261
    .local v7, "surfaceMoved":Z
    if-eqz v7, :cond_4

    .line 262
    iput v3, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 263
    iput v4, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    .line 266
    :try_start_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_2

    float-to-double v8, v3

    .local v8, "protoLogParam0":D
    float-to-double v10, v4

    .local v10, "protoLogParam1":D
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam2":Ljava/lang/String;
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v13, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v13, v6

    const/4 v5, 0x2

    aput-object v0, v13, v5

    const v5, 0x25c4caf9

    invoke-static {v12, v5, v14, v15, v13}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .end local v0    # "protoLogParam2":Ljava/lang/String;
    .end local v8    # "protoLogParam0":D
    .end local v10    # "protoLogParam1":D
    :cond_2
    if-nez v2, :cond_3

    .line 270
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2

    .line 272
    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_2
    goto :goto_3

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error positioning surface of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " pos=("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "WindowManager"

    invoke-static {v8, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    if-nez p4, :cond_4

    .line 278
    iget-object v5, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v8, "position"

    invoke-virtual {v5, v8, v6}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 282
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4
    :goto_3
    return-void
.end method

.method setPositionInTransaction(FFZ)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "recoveringMemory"    # Z

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V

    .line 256
    return-void
.end method

.method setSecure(Z)V
    .locals 11
    .param p1, "isSecure"    # Z

    .line 404
    const-string v0, "<<< CLOSE TRANSACTION setSecureLocked"

    const-string v1, "setSecure"

    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v2, :cond_0

    move v2, p1

    .local v2, "protoLogParam0":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x461fcb9c

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 406
    .end local v2    # "protoLogParam0":Z
    .end local v3    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_1

    .line 407
    return-void

    .line 409
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_2

    const-string v2, ">>> OPEN TRANSACTION setSecureLocked"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 412
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 415
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_3
    return-void

    .line 414
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 415
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_4
    throw v2
.end method

.method setShown(Z)V
    .locals 3
    .param p1, "surfaceShown"    # Z

    .line 548
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_0

    .line 549
    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifyWindowStateChange(IZI)V

    .line 552
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->onSurfaceShownChanged(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz v0, :cond_1

    .line 559
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/Session;->onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V

    .line 564
    :cond_1
    sget-boolean v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->notifyImeWindowStateChange(Z)V

    .line 567
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->updateInputVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 570
    :cond_2
    return-void
.end method

.method setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 5
    .param p1, "region"    # Landroid/graphics/Region;

    .line 372
    const-string v0, "<<< CLOSE TRANSACTION setTransparentRegion"

    const-string v1, "setTransparentRegion"

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "WindowManager"

    if-nez v2, :cond_0

    .line 373
    const-string v0, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 376
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_1

    const-string v2, ">>> OPEN TRANSACTION setTransparentRegion"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 382
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_2
    return-void

    .line 381
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 382
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    throw v2
.end method

.method showRobustlyInTransaction()Z
    .locals 6

    .line 444
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x40f62b88

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 445
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " during relayout"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 448
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
