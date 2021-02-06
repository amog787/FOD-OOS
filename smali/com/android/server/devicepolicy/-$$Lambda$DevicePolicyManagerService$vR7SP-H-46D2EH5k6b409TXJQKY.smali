.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:[B

.field public final synthetic f$3:Landroid/content/ComponentName;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;[BLandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$1:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$2:[B

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$3:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$1:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$2:[B

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$3:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vR7SP-H-46D2EH5k6b409TXJQKY;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$installCaCert$27$DevicePolicyManagerService(Landroid/os/UserHandle;[BLandroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
