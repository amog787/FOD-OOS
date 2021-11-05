.class Lcom/android/server/appop/AppOpsService$6;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 1736
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$6;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageTrustedToInstallApps(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1739
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$6;->this$0:Lcom/android/server/appop/AppOpsService;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 1741
    .local v0, "appOpMode":I
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1747
    return v1

    .line 1745
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1743
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
