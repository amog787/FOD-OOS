.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LocalService$YxQa4ZcUPWKs76meOLw1c_tn1OU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LocalService$YxQa4ZcUPWKs76meOLw1c_tn1OU;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LocalService$YxQa4ZcUPWKs76meOLw1c_tn1OU;->f$1:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LocalService$YxQa4ZcUPWKs76meOLw1c_tn1OU;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LocalService$YxQa4ZcUPWKs76meOLw1c_tn1OU;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->lambda$reportSeparateProfileChallengeChanged$0$DevicePolicyManagerService$LocalService(I)V

    return-void
.end method
