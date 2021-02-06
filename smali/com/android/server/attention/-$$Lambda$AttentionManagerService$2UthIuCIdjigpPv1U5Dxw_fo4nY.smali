.class public final synthetic Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/attention/AttentionManagerService;

.field public final synthetic f$1:Lcom/android/server/attention/AttentionManagerService$UserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;->f$0:Lcom/android/server/attention/AttentionManagerService;

    iput-object p2, p0, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;->f$1:Lcom/android/server/attention/AttentionManagerService$UserState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;->f$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v1, p0, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;->f$1:Lcom/android/server/attention/AttentionManagerService$UserState;

    invoke-virtual {v0, v1}, Lcom/android/server/attention/AttentionManagerService;->lambda$cancelAndUnbindLocked$0$AttentionManagerService(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    return-void
.end method
