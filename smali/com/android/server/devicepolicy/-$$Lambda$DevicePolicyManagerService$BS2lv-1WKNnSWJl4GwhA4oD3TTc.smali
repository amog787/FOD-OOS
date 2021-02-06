.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:Landroid/os/UserHandle;

.field public final synthetic f$4:Landroid/content/ComponentName;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$2:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$3:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$4:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$2:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$3:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$4:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BS2lv-1WKNnSWJl4GwhA4oD3TTc;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setApplicationRestrictions$59$DevicePolicyManagerService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method
