.class Lcom/android/server/am/ActiveServices$3;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActiveServices;->bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field final synthetic val$callerFg:Z

.field final synthetic val$connection:Landroid/app/IServiceConnection;

.field final synthetic val$serviceIntent:Landroid/content/Intent;

.field final synthetic val$serviceRecord:Lcom/android/server/am/ServiceRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;

    .line 2186
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceIntent:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/android/server/am/ActiveServices$3;->val$callerFg:Z

    iput-object p5, p0, Lcom/android/server/am/ActiveServices$3;->val$connection:Landroid/app/IServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "result"    # Landroid/os/Bundle;

    .line 2189
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2192
    .local v1, "identity":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 2214
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2193
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2199
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 2200
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_1

    .line 2204
    :try_start_4
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceRecord:Lcom/android/server/am/ServiceRecord;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->val$serviceIntent:Landroid/content/Intent;

    .line 2205
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$3;->val$callerFg:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2204
    invoke-static/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->access$300(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2207
    :catch_0
    move-exception v3

    .line 2209
    :goto_0
    goto :goto_1

    .line 2211
    :cond_1
    :try_start_5
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$3;->val$connection:Landroid/app/IServiceConnection;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActiveServices;->unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2214
    :goto_1
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2215
    nop

    .line 2216
    .end local v1    # "identity":J
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2217
    return-void

    .line 2214
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2215
    nop

    .end local p0    # "this":Lcom/android/server/am/ActiveServices$3;
    .end local p1    # "result":Landroid/os/Bundle;
    throw v3

    .line 2216
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices$3;
    .restart local p1    # "result":Landroid/os/Bundle;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
