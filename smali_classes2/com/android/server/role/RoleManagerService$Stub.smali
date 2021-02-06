.class Lcom/android/server/role/RoleManagerService$Stub;
.super Landroid/app/role/IRoleManager$Stub;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Landroid/app/role/IRoleManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p2, "x1"    # Lcom/android/server/role/RoleManagerService$1;

    .line 469
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$Stub;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 721
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v2}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    return v2

    .line 726
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 727
    throw v2

    .line 723
    :catch_0
    move-exception v2

    .line 724
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    return v3
.end method

.method private handleIncomingUser(IZLjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "allowAll"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 666
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/app/role/IOnRoleHoldersChangedListener;
    .param p2, "userId"    # I

    .line 576
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x1

    const-string v1, "addOnRoleHoldersChangedListenerAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 581
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.OBSERVE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 586
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$1200(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 588
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 589
    return-void
.end method

.method public addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Landroid/os/RemoteCallback;

    .line 519
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x0

    const-string v1, "addRoleHolderAsUser"

    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p4

    .line 524
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 528
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 529
    const-string v0, "callback cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p4}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p5}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 533
    return-void
.end method

.method public addRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "addRoleHolderFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 631
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 633
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 634
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/role/RoleUserState;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public clearRoleHoldersAsUser(Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 559
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 563
    :cond_0
    const/4 v0, 0x0

    const-string v1, "clearRoleHoldersAsUser"

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p3

    .line 564
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 568
    const-string v0, "callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 570
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p3}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 571
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    return-void

    .line 696
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "--proto"

    invoke-static {p3, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 698
    .local v0, "dumpAsProto":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 699
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .local v1, "dumpOutputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_1

    .line 701
    .end local v1    # "dumpOutputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :cond_2
    const-string v1, "ROLE MANAGER STATE (dumpsys role):"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 705
    .restart local v1    # "dumpOutputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_1
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v2}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    .line 706
    .local v2, "userIds":[I
    array-length v3, v2

    .line 707
    .local v3, "userIdsLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 708
    aget v5, v2, v4

    .line 710
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v6, v5}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v6

    .line 711
    .local v6, "userState":Lcom/android/server/role/RoleUserState;
    const-wide v7, 0x20b00000001L

    const-string v9, "user_states"

    invoke-virtual {v6, v1, v9, v7, v8}, Lcom/android/server/role/RoleUserState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 707
    .end local v5    # "userId":I
    .end local v6    # "userState":Lcom/android/server/role/RoleUserState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 715
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 716
    return-void
.end method

.method public getDefaultSmsPackage(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 682
    .local v0, "identity":J
    :try_start_0
    const-string v2, "android.app.role.SMS"

    .line 683
    invoke-virtual {p0, v2, p1}, Lcom/android/server/role/RoleManagerService$Stub;->getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 682
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 682
    return-object v2

    .line 685
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    throw v2
.end method

.method public getHeldRolesFromController(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "getRolesHeldFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 659
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 660
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/role/RoleUserState;->getHeldRoles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getRoleHoldersAsUser(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    const/4 v0, 0x0

    const-string v1, "getRoleHoldersAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 503
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 508
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 509
    .local v0, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 512
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public isRoleAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .line 473
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 475
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 476
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/role/RoleUserState;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isRoleHeld(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 481
    invoke-static {}, Lcom/android/server/role/RoleManagerService$Stub;->getCallingUid()I

    move-result v0

    .line 482
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1}, Lcom/android/server/role/RoleManagerService;->access$800(Lcom/android/server/role/RoleManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 484
    const-string v1, "roleName cannot be null or empty"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 485
    const-string v1, "packageName cannot be null or empty"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 487
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 488
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v2, v1}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    .line 489
    .local v2, "roleHolders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 490
    const/4 v3, 0x0

    return v3

    .line 492
    :cond_0
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 674
    new-instance v0, Lcom/android/server/role/RoleManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/role/RoleManagerShellCommand;-><init>(Landroid/app/role/IRoleManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/role/RoleManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 676
    return-void
.end method

.method public removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/IOnRoleHoldersChangedListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/app/role/IOnRoleHoldersChangedListener;
    .param p2, "userId"    # I

    .line 594
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 598
    :cond_0
    const/4 v0, 0x1

    const-string v1, "removeOnRoleHoldersChangedListenerAsUser"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p2

    .line 599
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.OBSERVE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p2}, Lcom/android/server/role/RoleManagerService;->access$1300(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 605
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    if-nez p1, :cond_1

    .line 606
    return-void

    .line 608
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 609
    return-void
.end method

.method public removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;IILandroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Landroid/os/RemoteCallback;

    .line 539
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0}, Lcom/android/server/role/RoleManagerService;->access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void

    .line 543
    :cond_0
    const/4 v0, 0x0

    const-string v1, "removeRoleHolderAsUser"

    invoke-direct {p0, p4, v0, v1}, Lcom/android/server/role/RoleManagerService$Stub;->handleIncomingUser(IZLjava/lang/String;)I

    move-result p4

    .line 544
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_ROLE_HOLDERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 548
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 549
    const-string v0, "callback cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p4}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p5}, Landroid/app/role/RoleControllerManager;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 553
    return-void
.end method

.method public removeRoleHolderFromController(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "removeRoleHolderFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v0, "roleName cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 645
    const-string v0, "packageName cannot be null or empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 647
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 648
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/role/RoleUserState;->removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setRoleNamesFromController(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 613
    .local p1, "roleNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller.permission.MANAGE_ROLES_FROM_CONTROLLER"

    const-string v2, "setRoleNamesFromController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "roleNames cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 619
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 620
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$Stub;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/role/RoleUserState;->setRoleNames(Ljava/util/List;)V

    .line 621
    return-void
.end method
