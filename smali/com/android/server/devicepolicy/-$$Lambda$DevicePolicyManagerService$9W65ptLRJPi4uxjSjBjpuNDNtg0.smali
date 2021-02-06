.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0;->f$1:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0;->f$2:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0;->f$1:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0;->f$2:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$9W65ptLRJPi4uxjSjBjpuNDNtg0;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$removeUser$60$DevicePolicyManagerService(Landroid/os/UserHandle;Landroid/content/ComponentName;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
