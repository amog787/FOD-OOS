.class Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixedRotationTransitionListener"
.end annotation


# instance fields
.field private mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

.field private mRecentsWillBeTop:Z

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayContent;

    .line 5973
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 5973
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method


# virtual methods
.method isTopFixedOrientationRecentsAnimating()Z
    .locals 1

    .line 6047
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 6048
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 6049
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6047
    :goto_0
    return v0
.end method

.method notifyRecentsWillBeTop()V
    .locals 1

    .line 6039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    .line 6040
    return-void
.end method

.method public onAppTransitionCancelledLocked(I)V
    .locals 1
    .param p1, "transit"    # I

    .line 6104
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 6105
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6054
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6059
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 6062
    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    if-eqz v1, :cond_1

    .line 6068
    return-void

    .line 6070
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$500(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6074
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->finishFixedRotationTransform()V

    .line 6075
    return-void

    .line 6077
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$500(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform(Lcom/android/server/wm/WindowToken;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6078
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$500(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->hasAnimatingFixedRotationTransition()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6081
    return-void

    .line 6088
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6089
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$500(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v1, v2, :cond_4

    goto :goto_0

    .line 6093
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isAppTransitioning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6094
    return-void

    .line 6099
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 6100
    return-void

    .line 6091
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_6
    :goto_0
    return-void

    .line 6060
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_7
    :goto_1
    return-void
.end method

.method public onAppTransitionTimeoutLocked()V
    .locals 1

    .line 6109
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 6110
    return-void
.end method

.method onFinishRecentsAnimation()V
    .locals 4

    .line 6011
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 6012
    .local v0, "animatingRecents":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    .line 6013
    .local v1, "recentsWillBeTop":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 6014
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    .line 6015
    if-eqz v1, :cond_0

    .line 6018
    return-void

    .line 6021
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v3}, Lcom/android/server/wm/DisplayContent;->access$500(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 6028
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_0

    .line 6034
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 6036
    :goto_0
    return-void
.end method

.method onStartRecentsAnimation(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 5991
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 5992
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5996
    return-void

    .line 5998
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->rotateInDifferentOrientationIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 5999
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6002
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    .line 6004
    :cond_1
    return-void
.end method
