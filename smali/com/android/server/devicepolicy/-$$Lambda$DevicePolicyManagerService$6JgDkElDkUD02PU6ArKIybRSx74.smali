.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6JgDkElDkUD02PU6ArKIybRSx74;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6JgDkElDkUD02PU6ArKIybRSx74;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6JgDkElDkUD02PU6ArKIybRSx74;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6JgDkElDkUD02PU6ArKIybRSx74;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6JgDkElDkUD02PU6ArKIybRSx74;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6JgDkElDkUD02PU6ArKIybRSx74;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6JgDkElDkUD02PU6ArKIybRSx74;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setProfileOwner$48$DevicePolicyManagerService(ILcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;)V

    return-void
.end method
