.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo;->f$2:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo;->f$3:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo;->f$2:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$gHXBW5obI5bGEUL_qnloZ8Ik-Fo;->f$3:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$clearProfileOwner$49$DevicePolicyManagerService(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;ILandroid/content/ComponentName;)V

    return-void
.end method
