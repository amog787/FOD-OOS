.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageCallbackList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 1538
    .local p0, "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;, "Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList<TT;>;"
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 1
    .param p2, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1541
    .local p0, "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;, "Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList<TT;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TT;"
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->checkCallbackCount()V

    .line 1542
    return-void
.end method
