.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Z4Z1L2SoQNQaQFS40CclOGVDZHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Z4Z1L2SoQNQaQFS40CclOGVDZHc;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Z4Z1L2SoQNQaQFS40CclOGVDZHc;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Z4Z1L2SoQNQaQFS40CclOGVDZHc;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Z4Z1L2SoQNQaQFS40CclOGVDZHc;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Z4Z1L2SoQNQaQFS40CclOGVDZHc;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$Z4Z1L2SoQNQaQFS40CclOGVDZHc;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$updateProfileLockTimeoutLocked$26$DevicePolicyManagerService(ILcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method
