.class Lcom/android/server/os/SchedulingPolicyService$1;
.super Ljava/lang/Object;
.source "SchedulingPolicyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/SchedulingPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/SchedulingPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/os/SchedulingPolicyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/os/SchedulingPolicyService;

    .line 44
    iput-object p1, p0, Lcom/android/server/os/SchedulingPolicyService$1;->this$0:Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/server/os/SchedulingPolicyService$1;->this$0:Lcom/android/server/os/SchedulingPolicyService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/os/SchedulingPolicyService;->requestCpusetBoost(ZLandroid/os/IBinder;)I

    .line 48
    return-void
.end method
