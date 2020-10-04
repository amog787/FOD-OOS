.class final Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;
.super Ljava/lang/Object;
.source "BiometricService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnabledOnKeyguardCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .locals 2
    .param p2, "callback"    # Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 532
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 535
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    goto :goto_0

    .line 536
    :catch_0
    move-exception p1

    .line 537
    .local p1, "e":Landroid/os/RemoteException;
    const-string v0, "BiometricService"

    const-string v1, "Unable to linkToDeath"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 554
    const-string v0, "BiometricService"

    const-string v1, "Enabled callback binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 556
    return-void
.end method

.method notify(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 3
    .param p1, "sourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "enabled"    # Z

    .line 543
    const-string v0, "BiometricService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    invoke-interface {v1, p1, p2}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke onChanged"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 544
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 545
    .local v1, "e":Landroid/os/DeadObjectException;
    const-string v2, "Death while invoking notify"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 549
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :goto_0
    nop

    .line 550
    :goto_1
    return-void
.end method
