.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$vGRhfNpFTw0hellWUlmBolfzRy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ConnectivityService;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$vGRhfNpFTw0hellWUlmBolfzRy8;->f$0:Lcom/android/server/ConnectivityService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$vGRhfNpFTw0hellWUlmBolfzRy8;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$vGRhfNpFTw0hellWUlmBolfzRy8;->f$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$vGRhfNpFTw0hellWUlmBolfzRy8;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->lambda$startCaptivePortalAppInternal$4$ConnectivityService(Landroid/content/Intent;)V

    return-void
.end method
