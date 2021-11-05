.class Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;
.super Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 240
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    return-void
.end method


# virtual methods
.method public getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 293
    return-object v0

    .line 297
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x2000b000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 4
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 278
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 279
    return-object v0

    .line 283
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-object v0
.end method

.method public grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 258
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 260
    return-void
.end method

.method public isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 267
    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 251
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 253
    return-void
.end method
