.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$dhvmeszm1pcQE1-YdsBo8p9c6wM;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setSystemSetting$71$DevicePolicyManagerService(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
