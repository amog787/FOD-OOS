.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/ComponentName;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I[Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$3:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$3:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$BUPDdwFRc3Pb9VfSCy2Epjzh7Qo;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$uninstallCaCerts$28$DevicePolicyManagerService(I[Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method
