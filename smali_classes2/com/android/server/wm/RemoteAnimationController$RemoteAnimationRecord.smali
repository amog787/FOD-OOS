.class public Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteAnimationRecord"
.end annotation


# instance fields
.field mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field final mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

.field final mStartBounds:Landroid/graphics/Rect;

.field mTarget:Landroid/view/RemoteAnimationTarget;

.field mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wm/RemoteAnimationController;
    .param p2, "appWindowToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "endPos"    # Landroid/graphics/Point;
    .param p4, "endBounds"    # Landroid/graphics/Rect;
    .param p5, "startBounds"    # Landroid/graphics/Rect;

    .line 423
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 424
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 425
    new-instance v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-direct {v1, p1, p0, p3, p4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 426
    if-eqz p5, :cond_0

    .line 427
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 428
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 429
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 430
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 432
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, p1, p0, v2, v1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    goto :goto_0

    .line 435
    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 437
    :cond_1
    :goto_0
    return-void
.end method

.method private getMode()I
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 487
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const/4 v1, 0x0

    return v1

    .line 489
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    const/4 v1, 0x2

    return v1

    .line 492
    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 20

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 441
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 442
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v4, :cond_3

    .line 443
    invoke-static {v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v4, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    if-nez v4, :cond_0

    move-object/from16 v19, v1

    goto :goto_0

    .line 447
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 448
    .local v4, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 449
    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 450
    new-instance v15, Landroid/view/RemoteAnimationTarget;

    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v7

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 451
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v5

    xor-int/lit8 v9, v5, 0x1

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 453
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v12

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$500(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Point;

    move-result-object v13

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 454
    invoke-static {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$600(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v16

    const/16 v17, 0x0

    .line 455
    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v5, :cond_1

    iget-object v3, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    :cond_1
    iget-object v11, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    move-object v5, v15

    move-object/from16 v18, v11

    move-object v11, v4

    move-object/from16 v19, v1

    move-object v1, v15

    .end local v1    # "task":Lcom/android/server/wm/Task;
    .local v19, "task":Lcom/android/server/wm/Task;
    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v3

    invoke-direct/range {v5 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 457
    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v1

    .line 443
    .end local v4    # "insets":Landroid/graphics/Rect;
    .end local v19    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_2
    move-object/from16 v19, v1

    .end local v1    # "task":Lcom/android/server/wm/Task;
    .restart local v19    # "task":Lcom/android/server/wm/Task;
    goto :goto_0

    .line 442
    .end local v19    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_3
    move-object/from16 v19, v1

    .line 445
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .restart local v19    # "task":Lcom/android/server/wm/Task;
    :goto_0
    return-object v3
.end method

.method createRemoteAnimationTarget(Z)Landroid/view/RemoteAnimationTarget;
    .locals 20
    .param p1, "isOpening"    # Z

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 464
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 465
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v4, :cond_3

    .line 466
    invoke-static {v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v4, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    if-nez v4, :cond_0

    move-object/from16 v19, v1

    goto :goto_0

    .line 470
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 471
    .local v4, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 472
    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 473
    new-instance v15, Landroid/view/RemoteAnimationTarget;

    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 474
    xor-int/lit8 v7, p1, 0x1

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 475
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v5

    xor-int/lit8 v9, v5, 0x1

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 477
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v12

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$500(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Point;

    move-result-object v13

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 478
    invoke-static {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$600(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v16

    const/16 v17, 0x0

    .line 479
    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v5, :cond_1

    iget-object v3, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    :cond_1
    iget-object v11, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    move-object v5, v15

    move-object/from16 v18, v11

    move-object v11, v4

    move-object/from16 v19, v1

    move-object v1, v15

    .end local v1    # "task":Lcom/android/server/wm/Task;
    .local v19, "task":Lcom/android/server/wm/Task;
    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v3

    invoke-direct/range {v5 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 481
    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v1

    .line 466
    .end local v4    # "insets":Landroid/graphics/Rect;
    .end local v19    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_2
    move-object/from16 v19, v1

    .end local v1    # "task":Lcom/android/server/wm/Task;
    .restart local v19    # "task":Lcom/android/server/wm/Task;
    goto :goto_0

    .line 465
    .end local v19    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_3
    move-object/from16 v19, v1

    .line 468
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .restart local v19    # "task":Lcom/android/server/wm/Task;
    :goto_0
    return-object v3
.end method
