.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;IIZLandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$2:I

    iput p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$4:Z

    iput-object p6, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$5:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$2:I

    iget v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$3:I

    iget-boolean v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$4:Z

    iget-object v5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$6VeZWEdN1dyRdHEAUxfQP-WansI;->f$5:Landroid/content/ComponentName;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setPasswordQuality$8$DevicePolicyManagerService(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;IIZLandroid/content/ComponentName;)V

    return-void
.end method
