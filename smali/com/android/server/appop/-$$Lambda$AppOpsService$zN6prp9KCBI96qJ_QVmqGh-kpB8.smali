.class public final synthetic Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;->f$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;->f$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/appop/AppOpsService;->lambda$systemReady$0$AppOpsService(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
