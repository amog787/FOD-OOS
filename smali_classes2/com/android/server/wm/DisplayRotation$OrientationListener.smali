.class Lcom/android/server/wm/DisplayRotation$OrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;
    }
.end annotation


# instance fields
.field mEnabled:Z

.field final mRunnableCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1603
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 1604
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1600
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    .line 1605
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 5

    .line 1668
    invoke-super {p0}, Lcom/android/server/policy/WindowOrientationListener;->disable()V

    .line 1669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 1670
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x1a39227c

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1671
    :cond_0
    return-void
.end method

.method public enable(Z)V
    .locals 5
    .param p1, "clearCurrentRotation"    # Z

    .line 1661
    invoke-super {p0, p1}, Lcom/android/server/policy/WindowOrientationListener;->enable(Z)V

    .line 1662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .line 1663
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v1, -0x5d7ad82d

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1664
    :cond_0
    return-void
.end method

.method public onProposedRotationChanged(I)V
    .locals 9
    .param p1, "rotation"    # I

    .line 1632
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProposedRotationChanged, rotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1635
    :cond_0
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_1

    int-to-long v2, p1

    .local v2, "protoLogParam0":J
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x7ee4b3b9

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v4, v5, v1, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1638
    .end local v2    # "protoLogParam0":J
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1639
    .local v0, "r":Ljava/lang/Runnable;
    if-nez v0, :cond_2

    .line 1640
    new-instance v1, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener$UpdateRunnable;-><init>(Lcom/android/server/wm/DisplayRotation$OrientationListener;I)V

    move-object v0, v1

    .line 1641
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mRunnableCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1643
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1646
    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->onProposedRotationChanged(I)V

    .line 1648
    return-void
.end method

.method public setCurrentRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 1652
    invoke-super {p0, p1}, Lcom/android/server/policy/WindowOrientationListener;->setCurrentRotation(I)V

    .line 1655
    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->setCurrentRotation(I)V

    .line 1657
    return-void
.end method
