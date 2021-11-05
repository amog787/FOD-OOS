.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/PermissionMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;->f$0:Lcom/android/server/connectivity/PermissionMonitor;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;->f$0:Lcom/android/server/connectivity/PermissionMonitor;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->lambda$removeBypassingUids$0$PermissionMonitor(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
