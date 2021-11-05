.class Lcom/android/server/wm/WallpaperAnimationAdapter;
.super Ljava/lang/Object;
.source "WallpaperAnimationAdapter.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperAnimationAdapter"


# instance fields
.field private mAnimationCanceledRunnable:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field private mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mDurationHint:J

.field private mLastAnimationType:I

.field private mStatusBarTransitionDelay:J

.field private mTarget:Landroid/view/RemoteAnimationTarget;

.field private final mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WallpaperWindowToken;JJLjava/util/function/Consumer;)V
    .locals 0
    .param p1, "wallpaperToken"    # Lcom/android/server/wm/WallpaperWindowToken;
    .param p2, "durationHint"    # J
    .param p4, "statusBarTransitionDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            "JJ",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p6, "animationCanceledRunnable":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WallpaperAnimationAdapter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 57
    iput-wide p2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mDurationHint:J

    .line 58
    iput-wide p4, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 59
    iput-object p6, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mAnimationCanceledRunnable:Ljava/util/function/Consumer;

    .line 60
    return-void
.end method

.method static synthetic lambda$startWallpaperAnimations$0(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 13
    .param p0, "durationHint"    # J
    .param p2, "statusBarTransitionDelay"    # J
    .param p4, "animationCanceledRunnable"    # Ljava/util/function/Consumer;
    .param p5, "targets"    # Ljava/util/ArrayList;
    .param p6, "adaptersOut"    # Ljava/util/ArrayList;
    .param p7, "wallpaperWindow"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 73
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/WallpaperWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 74
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x1b4bcad5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v4, v5, v3, v2, v1}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    return-void

    .line 78
    :cond_1
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_2

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x7aa1f682

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v4, v5, v3, v2, v1}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/server/wm/WallpaperAnimationAdapter;

    move-object v6, v0

    move-object/from16 v7, p7

    move-wide v8, p0

    move-wide v10, p2

    move-object/from16 v12, p4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/WallpaperAnimationAdapter;-><init>(Lcom/android/server/wm/WallpaperWindowToken;JJLjava/util/function/Consumer;)V

    .line 82
    .local v0, "wallpaperAdapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/WallpaperWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/16 v2, 0x10

    move-object/from16 v4, p7

    invoke-virtual {v4, v1, v0, v3, v2}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public static startWallpaperAnimations(Lcom/android/server/wm/WindowManagerService;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;
    .locals 12
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "durationHint"    # J
    .param p3, "statusBarTransitionDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "JJ",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .line 71
    .local p5, "animationCanceledRunnable":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WallpaperAnimationAdapter;>;"
    .local p6, "adaptersOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WallpaperAnimationAdapter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v11, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$-EwtM9NXnIMpRq_OzBHTdmhakaM;

    move-object v1, v11

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object v7, v0

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/-$$Lambda$WallpaperAnimationAdapter$-EwtM9NXnIMpRq_OzBHTdmhakaM;-><init>(JJLjava/util/function/Consumer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v11}, Lcom/android/server/wm/RootWindowContainer;->forAllWallpaperWindows(Ljava/util/function/Consumer;)V

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method


# virtual methods
.method createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 17

    .line 94
    move-object/from16 v0, p0

    new-instance v15, Landroid/view/RemoteAnimationTarget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v1, v0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 95
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->getPrefixOrderIndex()I

    move-result v8

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    iget-object v1, v0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    .line 96
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 97
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    const-string v0, "token="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    const-string v0, "Target: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 180
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 181
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_0

    .line 182
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 184
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 185
    return-void
.end method

.method public getDurationHint()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mDurationHint:J

    return-wide v0
.end method

.method getLastAnimationType()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mLastAnimationType:I

    return v0
.end method

.method getLeash()Landroid/view/SurfaceControl;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .locals 4

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mStatusBarTransitionDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getToken()Lcom/android/server/wm/WallpaperWindowToken;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    return-object v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 5
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;

    .line 149
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, -0x2d58e9e4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mAnimationCanceledRunnable:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 5
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "type"    # I
    .param p4, "finishCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 138
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0x3ff83206

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mWallpaperToken:Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperWindowToken;->getPrefixOrderIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 143
    iput-object p4, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 144
    iput p3, p0, Lcom/android/server/wm/WallpaperAnimationAdapter;->mLastAnimationType:I

    .line 145
    return-void
.end method
