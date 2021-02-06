.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$MvCZq_N8hoaiWKavde0PKNRNSUM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$MvCZq_N8hoaiWKavde0PKNRNSUM;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$MvCZq_N8hoaiWKavde0PKNRNSUM;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$getActiveAdminsForLockscreenPoliciesLocked$9$DevicePolicyManagerService(Landroid/content/pm/UserInfo;)Z

    move-result p1

    return p1
.end method
