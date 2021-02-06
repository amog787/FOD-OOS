.class public final synthetic Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/AsyncNotedAppOp;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$0:Landroid/app/AsyncNotedAppOp;

    iput-object p2, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$1:[Z

    iput p3, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$2:I

    iput-object p4, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$4:I

    iput-object p6, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$0:Landroid/app/AsyncNotedAppOp;

    iget-object v1, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$1:[Z

    iget v2, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$2:I

    iget-object v3, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$4:I

    iget-object v5, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4;->f$5:Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    invoke-static/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->lambda$collectAsyncNotedOp$2(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    return-void
.end method
