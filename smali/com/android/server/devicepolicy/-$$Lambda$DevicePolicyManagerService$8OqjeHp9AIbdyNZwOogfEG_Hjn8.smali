.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8OqjeHp9AIbdyNZwOogfEG_Hjn8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8OqjeHp9AIbdyNZwOogfEG_Hjn8;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8OqjeHp9AIbdyNZwOogfEG_Hjn8;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8OqjeHp9AIbdyNZwOogfEG_Hjn8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8OqjeHp9AIbdyNZwOogfEG_Hjn8;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8OqjeHp9AIbdyNZwOogfEG_Hjn8;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$8OqjeHp9AIbdyNZwOogfEG_Hjn8;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$getApplicationLabel$54$DevicePolicyManagerService(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
