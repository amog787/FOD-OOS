.class public interface abstract Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
.super Ljava/lang/Object;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Injector"
.end annotation


# virtual methods
.method public abstract checkComponentPermission(Ljava/lang/String;IIZ)I
.end method

.method public abstract clearCallingIdentity()J
.end method

.method public abstract getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
.end method

.method public abstract getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
.end method

.method public abstract getAppOpsManager()Landroid/app/AppOpsManager;
.end method

.method public abstract getCallingPid()I
.end method

.method public abstract getCallingUid()I
.end method

.method public abstract getCallingUserHandle()Landroid/os/UserHandle;
.end method

.method public abstract getCallingUserId()I
.end method

.method public abstract getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
.end method

.method public abstract getIPackageManager()Landroid/content/pm/IPackageManager;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
.end method

.method public abstract getUserManager()Landroid/os/UserManager;
.end method

.method public abstract killUid(I)V
.end method

.method public abstract restoreCallingIdentity(J)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
.end method
