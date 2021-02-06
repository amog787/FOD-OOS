.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$4Rn8bUsWe_tjjwQ22_bs-xFo9tY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

.field public final synthetic f$2:I

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$4Rn8bUsWe_tjjwQ22_bs-xFo9tY;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$4Rn8bUsWe_tjjwQ22_bs-xFo9tY;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$4Rn8bUsWe_tjjwQ22_bs-xFo9tY;->f$2:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$4Rn8bUsWe_tjjwQ22_bs-xFo9tY;->f$3:[B

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$4Rn8bUsWe_tjjwQ22_bs-xFo9tY;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$4Rn8bUsWe_tjjwQ22_bs-xFo9tY;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$4Rn8bUsWe_tjjwQ22_bs-xFo9tY;->f$2:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$4Rn8bUsWe_tjjwQ22_bs-xFo9tY;->f$3:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setResetPasswordToken$95$DevicePolicyManagerService(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I[B)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
