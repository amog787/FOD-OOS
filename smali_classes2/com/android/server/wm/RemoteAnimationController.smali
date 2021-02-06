.class Lcom/android/server/wm/RemoteAnimationController;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;,
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;,
        Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private mCanceled:Z

.field private mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLinkedToDeathOfRunner:Z

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWallpaperAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$uQS8vaPKQ-E3x_9G8NCxPQmw1fw;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$uQS8vaPKQ-E3x_9G8NCxPQmw1fw;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 85
    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 63
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createAppAnimations()[Landroid/view/RemoteAnimationTarget;
    .locals 11

    .line 242
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x26ee615e

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 245
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 246
    .local v5, "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    invoke-virtual {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    .line 247
    .local v6, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v6, :cond_2

    .line 248
    sget-boolean v7, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x4a6cd2bb

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-static {v8, v9, v2, v1, v10}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_2
    sget-boolean v7, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v7, :cond_3

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v9, 0x260da918

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-static {v8, v9, v2, v1, v10}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 257
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    :cond_3
    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 258
    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 259
    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 260
    invoke-static {v8}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v8

    iget-object v9, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 263
    :cond_4
    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 264
    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 265
    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 266
    invoke-static {v8}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v8

    iget-object v9, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 269
    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 244
    .end local v5    # "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .end local v6    # "target":Landroid/view/RemoteAnimationTarget;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 272
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method private createAppAnimations(Z)[Landroid/view/RemoteAnimationTarget;
    .locals 8
    .param p1, "isOpening"    # Z

    .line 278
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    const-string v0, "createAppAnimations()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 281
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 282
    .local v3, "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->createRemoteAnimationTarget(Z)Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    .line 283
    .local v4, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v4, :cond_2

    .line 284
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tAdd container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :cond_2
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tRemove container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_3
    iget-object v5, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 293
    invoke-static {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 294
    iget-object v5, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 295
    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v6

    iget-object v7, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v5, v6, v7}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 298
    :cond_4
    iget-object v5, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v5, :cond_5

    iget-object v5, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 299
    invoke-static {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 300
    iget-object v5, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 301
    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v6

    iget-object v7, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v5, v6, v7}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 304
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 280
    .end local v3    # "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .end local v4    # "target":Landroid/view/RemoteAnimationTarget;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 307
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method private createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;
    .locals 12

    .line 312
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0x236bb261

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 314
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 315
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v8

    new-instance v10, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$00Yxjx11zz51RKvYPduFUGrXC_w;

    invoke-direct {v10, p0}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$00Yxjx11zz51RKvYPduFUGrXC_w;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iget-object v11, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 313
    invoke-static/range {v5 .. v11}, Lcom/android/server/wm/WallpaperAnimationAdapter;->startWallpaperAnimations(Lcom/android/server/wm/WindowManagerService;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private invokeAnimationCancelled()V
    .locals 3

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to notify cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private linkToDeathOfRunner()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 408
    :cond_0
    return-void
.end method

.method private onAnimationFinished()V
    .locals 10

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setThreadToUx(IZ)V

    .line 329
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v4, v0

    .local v4, "protoLogParam0":J
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x59472ff0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v6, v2, v3, v7}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 331
    .end local v4    # "protoLogParam0":J
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 333
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->unlinkToDeathOfRunner()V

    .line 334
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    .line 335
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    :try_start_1
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x21369e24

    move-object v6, v3

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, v3, v6}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_5

    .line 340
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 341
    .local v5, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v6, :cond_2

    .line 342
    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 343
    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v7

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v6, v7, v8}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 346
    :cond_2
    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v6, :cond_3

    .line 347
    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 348
    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v7

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v6, v7, v8}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 351
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 352
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x39f4f264

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v1

    invoke-static {v7, v8, v1, v3, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    .end local v5    # "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 356
    .end local v4    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_7

    .line 357
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 358
    .local v5, "adapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    .line 359
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLastAnimationType()I

    move-result v7

    .line 358
    invoke-interface {v6, v7, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 360
    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 361
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x32ddec5b

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v1

    invoke-static {v7, v8, v1, v3, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    .end local v5    # "adapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 367
    .end local v4    # "i":I
    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "RemoteAnimationController#finished"

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 368
    nop

    .line 369
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 370
    invoke-direct {p0, v1}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 371
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v2, 0xecb62ed

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_8
    return-void

    .line 367
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "WindowManager"

    const-string v3, "Failed to finish remote animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    nop

    .end local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "RemoteAnimationController#finished"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 368
    nop

    .end local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    throw v1

    .line 369
    .restart local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private releaseFinishedCallback()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->release()V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 387
    :cond_0
    return-void
.end method

.method private setRunningRemoteAnimation(Z)V
    .locals 5
    .param p1, "running"    # Z

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    .line 391
    .local v0, "pid":I
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getCallingUid()I

    move-result v1

    .line 392
    .local v1, "uid":I
    if-eqz v0, :cond_1

    .line 395
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 396
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-nez v2, :cond_0

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find process with pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void

    .line 400
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 401
    return-void

    .line 393
    .end local v2    # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Calling pid of remote animation was null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private unlinkToDeathOfRunner()V
    .locals 2

    .line 411
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 413
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 415
    :cond_0
    return-void
.end method

.method private writeStartDebugStatement()V
    .locals 8

    .line 231
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x7518e37a

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 233
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 234
    .local v3, "pw":Lcom/android/internal/util/FastPrintWriter;
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 235
    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v6, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const-string v7, ""

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 234
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 237
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/FastPrintWriter;->close()V

    .line 238
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x31d185c0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v6, v7, v2, v1, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 239
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 419
    const-string v0, "binderDied"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method cancelAnimation(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 219
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x70be04df

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 221
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v2, :cond_1

    .line 222
    monitor-exit v0

    return-void

    .line 224
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    .line 225
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 227
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    .line 228
    return-void

    .line 225
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method clearPendingAnimations()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v1, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 207
    .local v1, "adapter":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v2, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 208
    .local v2, "thumbnailAdapter":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1, v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 211
    :cond_0
    if-eqz v2, :cond_1

    .line 212
    invoke-virtual {v2, v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 205
    .end local v1    # "adapter":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;
    .end local v2    # "thumbnailAdapter":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .locals 13
    .param p1, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "localBounds"    # Landroid/graphics/Rect;
    .param p4, "stackBounds"    # Landroid/graphics/Rect;
    .param p5, "startBounds"    # Landroid/graphics/Rect;

    .line 100
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v2, 0x788bb79d

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-object v6, v0

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 104
    .local v0, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v0
.end method

.method goodToGo()V
    .locals 10

    .line 112
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x3416e054

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v5, 0x44fa0000    # 2000.0f

    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 123
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-long v5, v6

    .line 122
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 127
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createAppAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 128
    .local v0, "appTargets":[Landroid/view/RemoteAnimationTarget;
    array-length v4, v0

    if-nez v4, :cond_3

    .line 129
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x2926d923

    move-object v5, v2

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 131
    return-void

    .line 135
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    .line 136
    .local v1, "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;-><init>(Lcom/android/server/wm/RemoteAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 154
    invoke-direct {p0, v3}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 155
    return-void

    .line 114
    .end local v0    # "appTargets":[Landroid/view/RemoteAnimationTarget;
    .end local v1    # "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    .local v4, "protoLogParam1":J
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0xb921a83

    const/4 v8, 0x4

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v3

    invoke-static {v6, v7, v8, v2, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 118
    return-void
.end method

.method goodToGoWhenStopFreezing(Z)V
    .locals 5
    .param p1, "isOpening"    # Z

    .line 160
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    const-string v0, "goodToGoWhenStopFreezing()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v3, 0x44fa0000    # 2000.0f

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 171
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-long v3, v4

    .line 170
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->createAppAnimations(Z)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 176
    .local v0, "appTargets":[Landroid/view/RemoteAnimationTarget;
    array-length v2, v0

    if-nez v2, :cond_3

    .line 177
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    .line 178
    const-string v2, "goodToGoWhenStopFreezing(): No apps to animate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 181
    return-void

    .line 185
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    .line 186
    .local v1, "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$feGbJNBa6Qg4o7bzk5US7mn9a9U;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$feGbJNBa6Qg4o7bzk5US7mn9a9U;-><init>(Lcom/android/server/wm/RemoteAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 200
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 201
    return-void

    .line 162
    .end local v0    # "appTargets":[Landroid/view/RemoteAnimationTarget;
    .end local v1    # "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    :cond_4
    :goto_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goodToGoWhenStopFreezing(): Animation finished already, canceled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPendingAnimations="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 166
    return-void
.end method

.method public synthetic lambda$createWallpaperAnimations$3$RemoteAnimationController(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$goodToGo$1$RemoteAnimationController([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 5
    .param p1, "appTargets"    # [Landroid/view/RemoteAnimationTarget;
    .param p2, "wallpaperTargets"    # [Landroid/view/RemoteAnimationTarget;

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->linkToDeathOfRunner()V

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-interface {v0, p1, p2, v1}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->setThreadToUx(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to start remote animation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, -0x77f5446b

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->writeStartDebugStatement()V

    .line 153
    :cond_1
    return-void
.end method

.method public synthetic lambda$goodToGoWhenStopFreezing$2$RemoteAnimationController([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 3
    .param p1, "appTargets"    # [Landroid/view/RemoteAnimationTarget;
    .param p2, "wallpaperTargets"    # [Landroid/view/RemoteAnimationTarget;

    .line 188
    const-string v0, "WindowManager"

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->linkToDeathOfRunner()V

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-interface {v1, p1, p2, v2}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to start remote animation"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 195
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "startAnimation(): Notify animation start:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->writeStartDebugStatement()V

    .line 199
    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$RemoteAnimationController()V
    .locals 1

    .line 75
    const-string v0, "timeoutRunnable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method
