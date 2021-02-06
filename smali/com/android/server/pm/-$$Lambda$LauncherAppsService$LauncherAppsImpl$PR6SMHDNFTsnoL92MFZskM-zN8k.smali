.class public final synthetic Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;->f$1:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->lambda$registerPackageInstallerCallback$0$LauncherAppsService$LauncherAppsImpl(Landroid/os/UserHandle;I)Z

    move-result p1

    return p1
.end method
