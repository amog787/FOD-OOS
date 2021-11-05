.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$C3-dNtMln9d5mQJ_0HLI24dfI_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/telephony/TelephonyManager;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/telephony/data/ApnSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/telephony/TelephonyManager;ILandroid/telephony/data/ApnSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$C3-dNtMln9d5mQJ_0HLI24dfI_A;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$C3-dNtMln9d5mQJ_0HLI24dfI_A;->f$1:Landroid/telephony/TelephonyManager;

    iput p3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$C3-dNtMln9d5mQJ_0HLI24dfI_A;->f$2:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$C3-dNtMln9d5mQJ_0HLI24dfI_A;->f$3:Landroid/telephony/data/ApnSetting;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$C3-dNtMln9d5mQJ_0HLI24dfI_A;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$C3-dNtMln9d5mQJ_0HLI24dfI_A;->f$1:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$C3-dNtMln9d5mQJ_0HLI24dfI_A;->f$2:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$C3-dNtMln9d5mQJ_0HLI24dfI_A;->f$3:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$updateOverrideApn$99$DevicePolicyManagerService(Landroid/telephony/TelephonyManager;ILandroid/telephony/data/ApnSetting;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
