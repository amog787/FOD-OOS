.class Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskAnimationAdapter"
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field private final mIsRecentTaskInvisible:Z

.field private mLastAnimationType:I

.field private mLocalBounds:Landroid/graphics/Rect;

.field private mTarget:Landroid/view/RemoteAnimationTarget;

.field private final mTask:Lcom/android/server/wm/Task;

.field final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "isRecentTaskInvisible"    # Z

    .line 983
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 981
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    .line 984
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 985
    iput-boolean p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    .line 986
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 988
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 989
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 990
    .local v0, "tmpPos":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    .line 991
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 992
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 971
    iget v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLastAnimationType:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 971
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 971
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method


# virtual methods
.method createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 21

    .line 995
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 996
    .local v1, "topApp":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 997
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    goto :goto_0

    .line 998
    :cond_0
    move-object v3, v2

    :goto_0
    nop

    .line 999
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_1

    .line 1000
    return-object v2

    .line 1002
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1003
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 1004
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1005
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController;->access$1100(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    .line 1006
    const/4 v4, 0x0

    move v6, v4

    goto :goto_1

    .line 1007
    :cond_2
    move v6, v7

    :goto_1
    nop

    .line 1008
    .local v6, "mode":I
    new-instance v15, Landroid/view/RemoteAnimationTarget;

    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    iget v5, v4, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v8, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 1009
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v4

    xor-int/lit8 v9, v4, 0x1

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 1010
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getPrefixOrderIndex()I

    move-result v11

    new-instance v12, Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-direct {v12, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v13, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 1011
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v16

    iget-boolean v7, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v4, v15

    move/from16 v19, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v2

    move-object/from16 v20, v1

    move-object v1, v15

    .end local v1    # "topApp":Lcom/android/server/wm/ActivityRecord;
    .local v20, "topApp":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v4 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 1013
    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1052
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRecentTaskInvisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLocalBounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 1067
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1068
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_0

    .line 1069
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1071
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1072
    return-void
.end method

.method public getDurationHint()J
    .locals 2

    .line 1042
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    .line 1018
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .locals 2

    .line 1047
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 3
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v1, 0x2

    const-string v2, "taskAnimationAdapterCanceled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 1038
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 2
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "type"    # I
    .param p4, "finishCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 1025
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1026
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1600(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1027
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1600(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$1600(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1029
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 1030
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 1031
    iput p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLastAnimationType:I

    .line 1032
    return-void
.end method
