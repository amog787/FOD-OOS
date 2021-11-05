.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;
.super Lcom/android/internal/policy/IKeyguardExitCallback$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardExitDelegate"
.end annotation


# instance fields
.field private mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 0
    .param p2, "onKeyguardExitResult"    # Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 142
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 144
    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 2
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** onKeyguardExitResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") CALLED ****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardServiceDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 152
    :cond_0
    return-void
.end method
