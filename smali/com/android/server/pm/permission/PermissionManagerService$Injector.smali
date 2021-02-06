.class public Lcom/android/server/pm/permission/PermissionManagerService$Injector;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 5236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5237
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 5238
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 5283
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public clearCallingIdentity()J
    .locals 2

    .line 5293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public disablePackageNamePermissionCache()V
    .locals 0

    .line 5272
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 5273
    return-void
.end method

.method public disablePermissionCache()V
    .locals 0

    .line 5265
    invoke-static {}, Landroid/permission/PermissionManager;->disablePermissionCache()V

    .line 5266
    return-void
.end method

.method public getCallingPid()I
    .locals 1

    .line 5251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method

.method public getCallingUid()I
    .locals 1

    .line 5244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 5308
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidatePackageInfoCache()V
    .locals 0

    .line 5258
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 5259
    return-void
.end method

.method public restoreCallingIdentity(J)V
    .locals 0
    .param p1, "token"    # J

    .line 5301
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5302
    return-void
.end method
