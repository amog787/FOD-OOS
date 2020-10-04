.class public interface abstract Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
.super Ljava/lang/Object;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Injector"
.end annotation


# virtual methods
.method public abstract clearCallingIdentity()J
.end method

.method public abstract getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
.end method

.method public abstract getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
.end method

.method public abstract getAppOpsManager()Landroid/app/AppOpsManager;
.end method

.method public abstract getCallingUid()I
.end method

.method public abstract getCallingUserHandle()Landroid/os/UserHandle;
.end method

.method public abstract getCallingUserId()I
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
.end method

.method public abstract getUserManager()Landroid/os/UserManager;
.end method

.method public abstract restoreCallingIdentity(J)V
.end method
