.class public Lcom/android/server/pm/CrossProfileAppsService;
.super Lcom/android/server/SystemService;
.source "CrossProfileAppsService.java"


# instance fields
.field private mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileAppsService;->mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 29
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsService;->mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    const-string v1, "crossprofileapps"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 34
    const-class v0, Landroid/content/pm/CrossProfileAppsInternal;

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsService;->mServiceImpl:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getLocalService()Landroid/content/pm/CrossProfileAppsInternal;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 35
    return-void
.end method
