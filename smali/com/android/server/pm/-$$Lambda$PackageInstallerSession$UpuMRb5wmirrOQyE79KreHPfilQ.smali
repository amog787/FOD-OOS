.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$UpuMRb5wmirrOQyE79KreHPfilQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$UpuMRb5wmirrOQyE79KreHPfilQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$UpuMRb5wmirrOQyE79KreHPfilQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$UpuMRb5wmirrOQyE79KreHPfilQ;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$UpuMRb5wmirrOQyE79KreHPfilQ;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->lambda$onStorageUnhealthy$1(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    return-void
.end method
