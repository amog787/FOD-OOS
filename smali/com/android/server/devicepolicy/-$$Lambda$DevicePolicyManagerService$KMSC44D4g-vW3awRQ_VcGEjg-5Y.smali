.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$KMSC44D4g-vW3awRQ_VcGEjg-5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$KMSC44D4g-vW3awRQ_VcGEjg-5Y;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$KMSC44D4g-vW3awRQ_VcGEjg-5Y;->f$1:Landroid/os/UserHandle;

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$KMSC44D4g-vW3awRQ_VcGEjg-5Y;->f$2:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$KMSC44D4g-vW3awRQ_VcGEjg-5Y;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$KMSC44D4g-vW3awRQ_VcGEjg-5Y;->f$1:Landroid/os/UserHandle;

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$KMSC44D4g-vW3awRQ_VcGEjg-5Y;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setLocationEnabled$74$DevicePolicyManagerService(Landroid/os/UserHandle;Z)V

    return-void
.end method
