.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$CsQvBWdzfNkbrb6KHMy2yuHA2MA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$CsQvBWdzfNkbrb6KHMy2yuHA2MA;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$CsQvBWdzfNkbrb6KHMy2yuHA2MA;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$CsQvBWdzfNkbrb6KHMy2yuHA2MA;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$CsQvBWdzfNkbrb6KHMy2yuHA2MA;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$CsQvBWdzfNkbrb6KHMy2yuHA2MA;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$CsQvBWdzfNkbrb6KHMy2yuHA2MA;->f$2:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$hasIncompatibleAccountsOrNonAdbNoLock$91$DevicePolicyManagerService(ILandroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
