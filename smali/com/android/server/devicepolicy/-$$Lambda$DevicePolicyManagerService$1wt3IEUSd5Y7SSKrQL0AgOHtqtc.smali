.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$1wt3IEUSd5Y7SSKrQL0AgOHtqtc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$1wt3IEUSd5Y7SSKrQL0AgOHtqtc;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$1wt3IEUSd5Y7SSKrQL0AgOHtqtc;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setForceEphemeralUsers$44$DevicePolicyManagerService()V

    return-void
.end method
