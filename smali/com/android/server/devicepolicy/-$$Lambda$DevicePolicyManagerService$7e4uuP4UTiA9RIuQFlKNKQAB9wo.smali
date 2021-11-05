.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$7e4uuP4UTiA9RIuQFlKNKQAB9wo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$7e4uuP4UTiA9RIuQFlKNKQAB9wo;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-wide p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$7e4uuP4UTiA9RIuQFlKNKQAB9wo;->f$1:J

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$7e4uuP4UTiA9RIuQFlKNKQAB9wo;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-wide v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$7e4uuP4UTiA9RIuQFlKNKQAB9wo;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setTime$75$DevicePolicyManagerService(J)V

    return-void
.end method
