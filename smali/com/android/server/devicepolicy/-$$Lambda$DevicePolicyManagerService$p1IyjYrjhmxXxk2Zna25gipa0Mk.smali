.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$p1IyjYrjhmxXxk2Zna25gipa0Mk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$p1IyjYrjhmxXxk2Zna25gipa0Mk;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$p1IyjYrjhmxXxk2Zna25gipa0Mk;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$p1IyjYrjhmxXxk2Zna25gipa0Mk;->f$2:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$p1IyjYrjhmxXxk2Zna25gipa0Mk;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$p1IyjYrjhmxXxk2Zna25gipa0Mk;->f$1:Z

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$p1IyjYrjhmxXxk2Zna25gipa0Mk;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$maybeResumeDeviceWideLoggingLocked$94$DevicePolicyManagerService(ZZ)V

    return-void
.end method
