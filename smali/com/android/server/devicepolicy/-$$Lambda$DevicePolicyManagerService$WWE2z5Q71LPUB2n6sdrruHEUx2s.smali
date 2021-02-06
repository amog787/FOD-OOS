.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WWE2z5Q71LPUB2n6sdrruHEUx2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WWE2z5Q71LPUB2n6sdrruHEUx2s;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WWE2z5Q71LPUB2n6sdrruHEUx2s;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WWE2z5Q71LPUB2n6sdrruHEUx2s;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$WWE2z5Q71LPUB2n6sdrruHEUx2s;->f$1:I

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$isPasswordSufficientAfterProfileUnification$22$DevicePolicyManagerService(ILandroid/content/pm/UserInfo;)Z

    move-result p1

    return p1
.end method
