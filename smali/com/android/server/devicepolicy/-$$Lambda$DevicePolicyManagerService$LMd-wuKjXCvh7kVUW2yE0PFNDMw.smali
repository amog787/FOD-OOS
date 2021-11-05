.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LMd-wuKjXCvh7kVUW2yE0PFNDMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/telephony/TelephonyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/telephony/TelephonyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LMd-wuKjXCvh7kVUW2yE0PFNDMw;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LMd-wuKjXCvh7kVUW2yE0PFNDMw;->f$1:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LMd-wuKjXCvh7kVUW2yE0PFNDMw;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$LMd-wuKjXCvh7kVUW2yE0PFNDMw;->f$1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$getOverrideApnsUnchecked$101$DevicePolicyManagerService(Landroid/telephony/TelephonyManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
