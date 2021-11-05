.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/app/admin/DeviceAdminInfo;

.field public final synthetic f$5:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

.field public final synthetic f$6:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;IZLandroid/app/admin/DeviceAdminInfo;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$3:Z

    iput-object p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$4:Landroid/app/admin/DeviceAdminInfo;

    iput-object p6, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$5:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    iput-object p7, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$6:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$1:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$3:Z

    iget-object v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$4:Landroid/app/admin/DeviceAdminInfo;

    iget-object v5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$5:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    iget-object v6, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vT_QnqFgjh3LMaMTwq65qCK_WUU;->f$6:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setActiveAdmin$4$DevicePolicyManagerService(Landroid/content/ComponentName;IZLandroid/app/admin/DeviceAdminInfo;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;Landroid/os/Bundle;)V

    return-void
.end method
