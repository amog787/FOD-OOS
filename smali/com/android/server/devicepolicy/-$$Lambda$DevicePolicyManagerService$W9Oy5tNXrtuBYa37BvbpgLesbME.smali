.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$W9Oy5tNXrtuBYa37BvbpgLesbME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$W9Oy5tNXrtuBYa37BvbpgLesbME;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$W9Oy5tNXrtuBYa37BvbpgLesbME;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$W9Oy5tNXrtuBYa37BvbpgLesbME;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$W9Oy5tNXrtuBYa37BvbpgLesbME;->f$1:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$reboot$85$DevicePolicyManagerService(Landroid/content/ComponentName;)V

    return-void
.end method
