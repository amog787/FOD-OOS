.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$3PMRGJU-0j94dGmQcTSGdeHm9es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$3PMRGJU-0j94dGmQcTSGdeHm9es;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$3PMRGJU-0j94dGmQcTSGdeHm9es;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$3PMRGJU-0j94dGmQcTSGdeHm9es;->f$2:Z

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$3PMRGJU-0j94dGmQcTSGdeHm9es;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$3PMRGJU-0j94dGmQcTSGdeHm9es;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$3PMRGJU-0j94dGmQcTSGdeHm9es;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$getCredentialOwner$56$DevicePolicyManagerService(IZ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
