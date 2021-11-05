.class final Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;
.super Landroid/app/AppOpsManagerInternal;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppOpsManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method private constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 6395
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/app/AppOpsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "x1"    # Lcom/android/server/appop/AppOpsService$1;

    .line 6395
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;)V

    return-void
.end method


# virtual methods
.method public setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "owners"    # Landroid/util/SparseIntArray;

    .line 6397
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 6398
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p1, v1, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    .line 6399
    monitor-exit v0

    .line 6400
    return-void

    .line 6399
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 6417
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->access$2500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 6418
    return-void
.end method

.method public setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .param p4, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .line 6411
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->access$2400(Lcom/android/server/appop/AppOpsService;IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 6412
    return-void
.end method

.method public updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .locals 1
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 6405
    .local p1, "uidPackageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/appop/AppOpsService;->access$2300(Lcom/android/server/appop/AppOpsService;Landroid/util/SparseArray;Z)V

    .line 6406
    return-void
.end method
