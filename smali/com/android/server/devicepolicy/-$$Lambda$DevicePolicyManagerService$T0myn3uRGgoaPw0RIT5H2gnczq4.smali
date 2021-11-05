.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$T0myn3uRGgoaPw0RIT5H2gnczq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$T0myn3uRGgoaPw0RIT5H2gnczq4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$T0myn3uRGgoaPw0RIT5H2gnczq4;->f$1:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$T0myn3uRGgoaPw0RIT5H2gnczq4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$T0myn3uRGgoaPw0RIT5H2gnczq4;->f$1:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setOverrideApnsEnabledUnchecked$102$DevicePolicyManagerService(Landroid/content/ContentValues;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
