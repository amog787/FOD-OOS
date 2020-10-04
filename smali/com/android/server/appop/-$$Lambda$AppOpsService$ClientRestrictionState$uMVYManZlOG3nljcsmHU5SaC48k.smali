.class public final synthetic Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService$ClientRestrictionState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;->f$0:Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    iput p2, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;->f$0:Lcom/android/server/appop/AppOpsService$ClientRestrictionState;

    iget v1, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->lambda$binderDied$0$AppOpsService$ClientRestrictionState(I)V

    return-void
.end method
