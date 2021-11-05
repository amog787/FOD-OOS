.class public final synthetic Lcom/android/server/appop/-$$Lambda$AppOpsService$IcRpnjSl3QKeLKuAUwu4sWn4PL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$IcRpnjSl3QKeLKuAUwu4sWn4PL4;->f$0:Lcom/android/server/appop/AppOpsService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/-$$Lambda$AppOpsService$IcRpnjSl3QKeLKuAUwu4sWn4PL4;->f$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->lambda$collectNoteOpCallsForValidation$3(Lcom/android/server/appop/AppOpsService;)V

    return-void
.end method
