.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;IZLjava/util/List;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$3:Z

    iput-object p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$4:Ljava/util/List;

    iput-object p6, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$5:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$3:Z

    iget-object v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$4:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$qaARLZVf9sBQMzowdcaHiWY-0ZU;->f$5:Landroid/content/ComponentName;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setAlwaysOnVpnPackage$30$DevicePolicyManagerService(Ljava/lang/String;IZLjava/util/List;Landroid/content/ComponentName;)V

    return-void
.end method
