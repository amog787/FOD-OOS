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

    .line 619
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p2, "x1"    # Lcom/android/server/biometrics/BiometricService$1;

    .line 619
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .locals 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "callback"    # Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 637
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 638
    .local v8, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 641
    .local v9, "callingUserId":I
    if-eqz v6, :cond_0

    .line 642
    iget-object v10, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v10}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 646
    :cond_0
    const-string v10, "BiometricService"

    if-ne v2, v9, :cond_1

    .line 648
    iget-object v11, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v11}, Lcom/android/server/biometrics/BiometricService;->access$1700(Lcom/android/server/biometrics/BiometricService;)V

    goto :goto_0

    .line 651
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "User "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " is requesting authentication of userid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v11, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v11}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 656
    :goto_0
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-nez v5, :cond_2

    goto/16 :goto_1

    .line 661
    :cond_2
    nop

    .line 662
    const/4 v10, 0x0

    const-string v11, "from_confirm_device_credential"

    invoke-virtual {v5, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 663
    .local v11, "isFromConfirmDeviceCredential":Z
    if-eqz v11, :cond_3

    .line 664
    iget-object v12, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v12}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 669
    :cond_3
    nop

    .line 670
    const-string/jumbo v12, "use_default_title"

    invoke-virtual {v5, v12, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 671
    .local v10, "useDefaultTitle":Z
    if-eqz v10, :cond_4

    .line 672
    iget-object v12, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v12}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 674
    const-string/jumbo v12, "title"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 675
    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 676
    invoke-virtual {v13}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x10400f9

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 675
    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 684
    :cond_4
    const-string v12, "allow_device_credential"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 685
    iget-object v12, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v12}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;

    invoke-direct {v13, p0, v3, v2, v5}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$BiometricServiceWrapper$WcflArFV4_Tp6xBU53c-nQEP7Ro;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/hardware/biometrics/IBiometricServiceReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void

    .line 713
    :cond_5
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v12

    .line 714
    .local v12, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v1, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 715
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 716
    iput v2, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 717
    iput-object v3, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 718
    iput-object v4, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 719
    iput-object v5, v12, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 720
    iput v7, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 721
    iput v8, v12, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 722
    iput v9, v12, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 723
    iput-object v6, v12, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 725
    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v13}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x9

    invoke-virtual {v13, v14, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 726
    return-void

    .line 657
    .end local v10    # "useDefaultTitle":Z
    .end local v11    # "isFromConfirmDeviceCredential":Z
    .end local v12    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_6
    :goto_1
    const-string v11, "Unable to authenticate, one or more null arguments"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method

.method public canAuthenticate(Ljava/lang/String;)I
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1700(Lcom/android/server/biometrics/BiometricService;)V

    .line 772
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 773
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 776
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v3, v0}, Lcom/android/server/biometrics/BiometricService;->access$1800(Lcom/android/server/biometrics/BiometricService;I)Landroid/util/Pair;

    move-result-object v3

    .line 777
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    .line 779
    .local v3, "error":I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    nop

    .line 781
    return v3

    .line 779
    .end local v3    # "error":I
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1700(Lcom/android/server/biometrics/BiometricService;)V

    .line 762
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 763
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 764
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 765
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 766
    return-void
.end method

.method public synthetic lambda$authenticate$0$BiometricService$BiometricServiceWrapper(Landroid/hardware/biometrics/IBiometricServiceReceiver;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 686
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 688
    .local v0, "kgm":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    const/16 v1, 0xe

    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 692
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 690
    invoke-interface {p1, v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    goto :goto_0

    .line 694
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BiometricService"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v1, p1}, Lcom/android/server/biometrics/BiometricService;->access$2202(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricServiceReceiver;)Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 701
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 704
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.app.extra.BIOMETRIC_PROMPT_BUNDLE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 706
    const/high16 v2, 0x8080000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 708
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 709
    return-void
.end method

.method public onConfirmDeviceCredentialError(ILjava/lang/String;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 737
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 739
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 740
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 741
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 742
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 743
    return-void
.end method

.method public onConfirmDeviceCredentialSuccess()V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 733
    return-void
.end method

.method public onReadyForAuthentication(IZI)V
    .locals 3
    .param p1, "cookie"    # I
    .param p2, "requireConfirmation"    # Z
    .param p3, "userId"    # I

    .line 622
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 624
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 625
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 626
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 627
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 628
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 629
    return-void
.end method

.method public registerCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    .line 752
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 754
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 755
    return-void
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 788
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :try_start_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 791
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->access$1900(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceEnabledOnKeyguard()Z

    move-result v1

    .line 790
    invoke-interface {p1, v0, v1}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public resetLockout([B)V
    .locals 5
    .param p1, "token"    # [B

    .line 812
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 815
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService;->access$2000(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService;->access$2000(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintService;->resetTimeout([B)V

    .line 818
    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService;->access$2100(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/face/IFaceService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 819
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService;->access$2100(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/face/IFaceService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/face/IFaceService;->resetLockout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 821
    :catch_0
    move-exception v2

    .line 822
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "BiometricService"

    const-string v4, "Remote exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    nop

    .line 826
    return-void

    .line 824
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setActiveUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 799
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1600(Lcom/android/server/biometrics/BiometricService;)V

    .line 800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 802
    .local v0, "ident":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 803
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricService$Authenticator;

    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricService$Authenticator;->getAuthenticator()Landroid/hardware/biometrics/BiometricAuthenticator;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/hardware/biometrics/BiometricAuthenticator;->setActiveUser(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    nop

    .line 808
    return-void

    .line 806
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
