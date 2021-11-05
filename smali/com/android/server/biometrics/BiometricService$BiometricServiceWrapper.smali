.class final Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;
.super Landroid/hardware/biometrics/IBiometricService$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BiometricServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p2, "x1"    # Lcom/android/server/biometrics/BiometricService$1;

    .line 682
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingUserId"    # I

    .line 698
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 700
    if-eqz p1, :cond_3

    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    if-nez p7, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    invoke-static {p7}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    invoke-static {p7}, Lcom/android/server/biometrics/Utils;->combineAuthenticatorBundles(Landroid/os/Bundle;)V

    .line 712
    const/4 v0, 0x0

    const-string/jumbo v1, "use_default_title"

    invoke-virtual {p7, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    const-string/jumbo v0, "title"

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 715
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104018d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-virtual {p7, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 719
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 720
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 721
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 722
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 723
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 724
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 725
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 726
    iput p8, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 727
    iput p9, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 728
    iput p10, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 730
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 731
    return-void

    .line 706
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid authenticator configuration"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_3
    :goto_0
    const-string v0, "BiometricService"

    const-string v1, "Unable to authenticate, one or more null arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method

.method public canAuthenticate(Ljava/lang/String;III)I
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUserId"    # I
    .param p4, "authenticators"    # I

    .line 750
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canAuthenticate: User="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Authenticators="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-static {p4}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 761
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "authenticators_allowed"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 763
    const/4 v2, 0x1

    .line 765
    .local v2, "biometricConstantsResult":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    const/4 v4, 0x0

    invoke-static {v3, p2, v0, p1, v4}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;ILandroid/os/Bundle;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 766
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 769
    goto :goto_0

    .line 767
    :catch_0
    move-exception v3

    .line 768
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Remote exception"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->biometricConstantsToBiometricManager(I)I

    move-result v1

    return v1

    .line 757
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "biometricConstantsResult":I
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid authenticator configuration"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I

    .line 736
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 738
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 739
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 740
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 741
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 742
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 743
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 744
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 745
    return-void
.end method

.method public getAuthenticatorIds(I)[J
    .locals 8
    .param p1, "callingUserId"    # I

    .line 883
    const-string v0, "BiometricService"

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 885
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 888
    .local v3, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :try_start_0
    iget-object v4, v3, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v4, p1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getAuthenticatorId(I)J

    move-result-wide v4

    .line 889
    .local v4, "id":J
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->getActualStrength()I

    move-result v6

    const/16 v7, 0xf

    invoke-static {v6, v7}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 891
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 893
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Authenticator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", authenticatorID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " cannot participate in Keystore operations"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    .end local v4    # "id":J
    :goto_1
    goto :goto_2

    .line 896
    :catch_0
    move-exception v4

    .line 897
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "RemoteException"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    .end local v3    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_0

    .line 901
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 902
    .local v0, "result":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 903
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 902
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 905
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public hasEnrolledBiometrics(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 780
    .local v1, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 781
    const/4 v0, 0x1

    return v0

    .line 783
    .end local v1    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_0
    goto :goto_0

    .line 786
    :cond_1
    goto :goto_1

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onReadyForAuthentication(IZI)V
    .locals 3
    .param p1, "cookie"    # I
    .param p2, "requireConfirmation"    # Z
    .param p3, "userId"    # I

    .line 685
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 687
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 688
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 689
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 690
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 691
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 692
    return-void
.end method

.method public registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "modality"    # I
    .param p3, "strength"    # I
    .param p4, "authenticator"    # Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 794
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    if-eqz p4, :cond_7

    .line 810
    const/16 v0, 0xf

    if-eq p3, v0, :cond_1

    const/16 v0, 0xff

    if-eq p3, v0, :cond_1

    const/16 v0, 0xfff

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported strength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 817
    .local v1, "wrapper":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget v2, v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->id:I

    if-eq v2, p1, :cond_2

    .line 820
    .end local v1    # "wrapper":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    goto :goto_1

    .line 818
    .restart local v1    # "wrapper":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register duplicate authenticator"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    .end local v1    # "wrapper":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1700(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "configs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 825
    .local v1, "idFound":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 826
    new-instance v3, Lcom/android/server/biometrics/SensorConfig;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    .line 827
    .local v3, "config":Lcom/android/server/biometrics/SensorConfig;
    iget v4, v3, Lcom/android/server/biometrics/SensorConfig;->mId:I

    if-ne v4, p1, :cond_4

    .line 828
    const/4 v1, 0x1

    .line 829
    goto :goto_3

    .line 825
    .end local v3    # "config":Lcom/android/server/biometrics/SensorConfig;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 832
    .end local v2    # "i":I
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 836
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;-><init>(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricStrengthController;->updateStrengths()V

    .line 839
    return-void

    .line 833
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot register unknown id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 801
    .end local v0    # "configs":[Ljava/lang/String;
    .end local v1    # "idFound":Z
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authenticator must not be null. Did you forget to modify the core/res/res/values/xml overlay for config_biometric_sensors?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;I)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    .param p2, "callingUserId"    # I

    .line 844
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 846
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1400(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :try_start_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 849
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceEnabledOnKeyguard()Z

    move-result v1

    .line 848
    invoke-interface {p1, v0, v1, p2}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(Landroid/hardware/biometrics/BiometricSourceType;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public resetLockout([B)V
    .locals 3
    .param p1, "token"    # [B

    .line 870
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 874
    .local v1, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->resetLockout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    .end local v1    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    goto :goto_0

    .line 878
    :cond_0
    goto :goto_1

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public setActiveUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 857
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)V

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 861
    .local v1, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v1    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    goto :goto_0

    .line 865
    :cond_0
    goto :goto_1

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
