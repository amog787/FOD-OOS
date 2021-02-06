.class Lcom/android/server/wm/DisplayPolicy$2;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 640
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 801
    .local v0, "rotation":Lcom/android/server/wm/DisplayRotation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    .line 797
    return-void
.end method

.method public onDown()V
    .locals 3

    .line 806
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$2;->getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;

    move-result-object v0

    .line 807
    .local v0, "listener":Lcom/android/server/policy/WindowOrientationListener;
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener;->onTouchStart()V

    .line 810
    :cond_0
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 811
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1600(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 813
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->access$1602(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 815
    :cond_1
    return-void
.end method

.method public onFling(I)V
    .locals 2
    .param p1, "duration"    # I

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 704
    :cond_0
    return-void
.end method

.method public onHorizontalFling(I)V
    .locals 6
    .param p1, "duration"    # I

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "currentPackage":Ljava/lang/String;
    const-string v1, "WindowManager"

    if-nez v0, :cond_0

    .line 735
    const-string v2, "Error: package name null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return-void

    .line 738
    :cond_0
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 739
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_1

    .line 740
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 741
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->access$1602(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 743
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_2

    .line 744
    const-string v2, "Error: boost object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void

    .line 747
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->access$1700(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v1

    .line 748
    .local v1, "isGame":Z
    if-nez v1, :cond_3

    .line 749
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    add-int/lit16 v4, p1, 0xa0

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 751
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->access$1602(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 754
    .end local v1    # "isGame":Z
    :cond_3
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 836
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 837
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 838
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 839
    return-void
.end method

.method public onMouseHoverAtTop()V
    .locals 4

    .line 827
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 829
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 830
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 831
    return-void
.end method

.method public onMouseLeaveFromEdge()V
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    return-void
.end method

.method public onScroll(Z)V
    .locals 6
    .param p1, "started"    # Z

    .line 758
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "currentPackage":Ljava/lang/String;
    const-string v1, "WindowManager"

    if-nez v0, :cond_0

    .line 760
    const-string v2, "Error: package name null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void

    .line 764
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    if-nez v2, :cond_1

    .line 765
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 767
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const-string v3, "Error: boost object null"

    if-nez v2, :cond_2

    .line 768
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void

    .line 771
    :cond_2
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->access$1500()Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_5

    .line 772
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v2, :cond_3

    .line 773
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    iput-object v5, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 775
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v2, :cond_4

    .line 776
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void

    .line 779
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->access$1700(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v1

    .line 780
    .local v1, "isGame":Z
    if-nez v1, :cond_5

    .line 781
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 785
    .end local v1    # "isGame":Z
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->access$1700(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v1

    .line 786
    .restart local v1    # "isGame":Z
    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 787
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const/16 v3, 0x1087

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_0

    .line 790
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 792
    :goto_0
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 4

    .line 653
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 655
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->access$700(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 659
    monitor-exit v0

    .line 660
    return-void

    .line 659
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSwipeFromLeft()V
    .locals 6

    .line 682
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 683
    .local v0, "excludedRegion":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 684
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 686
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 687
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 688
    .local v2, "sideAllowed":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 689
    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$1200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 691
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 693
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayPolicy;->access$700(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 694
    .end local v2    # "sideAllowed":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 696
    return-void

    .line 694
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onSwipeFromRight()V
    .locals 6

    .line 664
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 665
    .local v0, "excludedRegion":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 666
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 668
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 669
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 670
    .local v2, "sideAllowed":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 671
    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$1200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 673
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 675
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayPolicy;->access$700(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 676
    .end local v2    # "sideAllowed":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 678
    return-void

    .line 676
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onSwipeFromTop()V
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$600(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$600(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->access$700(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 648
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUpOrCancel()V
    .locals 1

    .line 819
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$2;->getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;

    move-result-object v0

    .line 820
    .local v0, "listener":Lcom/android/server/policy/WindowOrientationListener;
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener;->onTouchEnd()V

    .line 823
    :cond_0
    return-void
.end method

.method public onVerticalFling(I)V
    .locals 6
    .param p1, "duration"    # I

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "currentPackage":Ljava/lang/String;
    const-string v1, "WindowManager"

    if-nez v0, :cond_0

    .line 710
    const-string v2, "Error: package name null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void

    .line 713
    :cond_0
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->access$1500()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 714
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 716
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->access$1602(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 718
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_2

    .line 719
    const-string v2, "Error: boost object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 722
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->access$1700(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v1

    .line 723
    .local v1, "isGame":Z
    if-nez v1, :cond_3

    .line 724
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    add-int/lit16 v4, p1, 0xa0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 726
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2, v5}, Lcom/android/server/wm/DisplayPolicy;->access$1602(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 729
    .end local v1    # "isGame":Z
    :cond_3
    return-void
.end method
