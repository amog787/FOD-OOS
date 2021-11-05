.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$2:I

    iput p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$3:I

    iput-object p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$2:I

    iget v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$3:I

    iget-object v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$vyqxdRxB1hyTnrJiMqYRbp5JigI;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$ensureMinimumQuality$13$DevicePolicyManagerService(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;IILjava/lang/String;)V

    return-void
.end method
