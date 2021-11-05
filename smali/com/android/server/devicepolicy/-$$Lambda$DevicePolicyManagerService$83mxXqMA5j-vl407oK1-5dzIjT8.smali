.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$83mxXqMA5j-vl407oK1-5dzIjT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$83mxXqMA5j-vl407oK1-5dzIjT8;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$83mxXqMA5j-vl407oK1-5dzIjT8;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$83mxXqMA5j-vl407oK1-5dzIjT8;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$83mxXqMA5j-vl407oK1-5dzIjT8;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$83mxXqMA5j-vl407oK1-5dzIjT8;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$83mxXqMA5j-vl407oK1-5dzIjT8;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$isApplicationHidden$67$DevicePolicyManagerService(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
