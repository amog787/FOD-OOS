.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$Itq6pSsfsSgkuDfqznUMc7YMLwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$Itq6pSsfsSgkuDfqznUMc7YMLwU;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$ActiveAdmin$Itq6pSsfsSgkuDfqznUMc7YMLwU;->f$0:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lambda$getLocalUserRestrictions$0(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method
