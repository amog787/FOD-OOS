.class Lcom/android/server/am/ActivityManagerService$ShellDelegate;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
.implements Landroid/content/pm/PackageManagerInternal$CheckPermissionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellDelegate"
.end annotation


# instance fields
.field private mPermissions:[Ljava/lang/String;

.field private final mTargetPackageName:Ljava/lang/String;

.field private final mTargetUid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "targetPacakgeName"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 20700
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20701
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetPackageName:Ljava/lang/String;

    .line 20702
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    .line 20703
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    .line 20704
    return-void
.end method

.method private isTargetOp(I)Z
    .locals 2
    .param p1, "code"    # I

    .line 20789
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 20790
    return v1

    .line 20793
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 20794
    .local v0, "permission":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 20795
    return v1

    .line 20797
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isTargetPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 20802
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 20732
    .local p5, "superImpl":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 20735
    .local v0, "identity":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "com.android.shell"

    invoke-interface {p5, v2, v3, v4, v5}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20738
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20735
    return v2

    .line 20738
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 20741
    .end local v0    # "identity":J
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v0, v1, v2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public checkOperation(IILjava/lang/String;ZLcom/android/internal/util/function/QuadFunction;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "raw"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 20717
    .local p5, "superImpl":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 20720
    .local v0, "identity":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.android.shell"

    .line 20721
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 20720
    invoke-interface {p5, v2, v3, v4, v5}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20720
    return v2

    .line 20723
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 20726
    .end local v0    # "identity":J
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p5, v0, v1, p3, v2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/TriFunction;)I
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/util/function/TriFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 20762
    .local p4, "superImpl":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20763
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 20765
    .local v0, "identity":J
    :try_start_0
    const-string v2, "com.android.shell"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, p1, v2, v3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20767
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20765
    return v2

    .line 20767
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 20770
    .end local v0    # "identity":J
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, p1, p2, v0}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;ILjava/util/function/BiFunction;)I
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 20776
    .local p3, "superImpl":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 20779
    .local v0, "identity":J
    const/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20781
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20779
    return v2

    .line 20781
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 20784
    .end local v0    # "identity":J
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getDelegateUid()I
    .locals 1

    .line 20707
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    return v0
.end method

.method public noteOperation(IILjava/lang/String;Lcom/android/internal/util/function/TriFunction;)I
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/TriFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 20747
    .local p4, "superImpl":Lcom/android/internal/util/function/TriFunction;, "Lcom/android/internal/util/function/TriFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mTargetUid:I

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->isTargetOp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20748
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 20750
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const/16 v5, 0x7d0

    const-string v6, "com.android.shell"

    move v4, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/AppOpsService;->noteProxyOperation(IILjava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20753
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20750
    return v2

    .line 20753
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 20756
    .end local v0    # "identity":J
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v0, v1, p3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method setPermissions([Ljava/lang/String;)V
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 20711
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ShellDelegate;->mPermissions:[Ljava/lang/String;

    .line 20712
    return-void
.end method
