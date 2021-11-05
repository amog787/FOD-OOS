.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILandroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$2:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$3:I

    iput-object p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$2:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$3:I

    iget-object v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$olEIpfE_PsDgrTFneHlR7G9MHyA;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$wipeDataNoLock$35$DevicePolicyManagerService(ILandroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
