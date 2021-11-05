.class final Lcom/android/server/biometrics/AuthService$AuthServiceImpl;
.super Landroid/hardware/biometrics/IAuthService$Stub;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AuthServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/AuthService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/AuthService;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IAuthService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/AuthService;
    .param p2, "x1"    # Lcom/android/server/biometrics/AuthService$1;

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 20
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    move-object/from16 v1, p0

    move/from16 v13, p4

    move-object/from16 v14, p7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 141
    .local v15, "callingUserId":I
    const-string v0, "AuthService"

    if-ne v13, v15, :cond_0

    .line 142
    iget-object v2, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->access$100(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is requesting authentication of userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->access$200(Lcom/android/server/biometrics/AuthService;)V

    .line 149
    :goto_0
    if-eqz p1, :cond_4

    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    if-nez v14, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    const-string v0, "check_dpm"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    const-string/jumbo v0, "use_default_title"

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    const-string v0, "device_credential_title"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    .line 158
    const-string v0, "device_credential_subtitle"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    const-string v0, "device_credential_description"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    .line 162
    const-string/jumbo v0, "receive_system_events"

    invoke-virtual {v14, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    :cond_2
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->access$200(Lcom/android/server/biometrics/AuthService;)V

    .line 166
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 167
    .local v16, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 168
    .local v17, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 170
    .local v18, "identity":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->access$300(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v15

    invoke-interface/range {v2 .. v12}, Landroid/hardware/biometrics/IBiometricService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    nop

    .line 176
    return-void

    .line 174
    :catchall_0
    move-exception v0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    throw v0

    .line 150
    .end local v16    # "callingUid":I
    .end local v17    # "callingPid":I
    .end local v18    # "identity":J
    :cond_4
    :goto_1
    const-string v2, "Unable to authenticate, one or more null arguments"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public canAuthenticate(Ljava/lang/String;II)I
    .locals 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "authenticators"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 207
    .local v0, "callingUserId":I
    if-eq p2, v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->access$200(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->access$100(Lcom/android/server/biometrics/AuthService;)V

    .line 213
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 215
    .local v1, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->access$300(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    invoke-interface {v3, p1, p2, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->canAuthenticate(Ljava/lang/String;III)I

    move-result v3

    .line 217
    .local v3, "result":I
    const-string v4, "AuthService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canAuthenticate, userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callingUserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", authenticators: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    nop

    .line 224
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    return v3

    .line 224
    .end local v3    # "result":I
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    throw v3
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->access$100(Lcom/android/server/biometrics/AuthService;)V

    .line 183
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 189
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 190
    .local v7, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 191
    .local v8, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 193
    .local v9, "identity":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->access$300(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/IBiometricService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    nop

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw v1

    .line 184
    .end local v0    # "callingUid":I
    .end local v7    # "callingPid":I
    .end local v8    # "callingUserId":I
    .end local v9    # "identity":J
    :cond_1
    :goto_0
    const-string v0, "AuthService"

    const-string v1, "Unable to authenticate, one or more null arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public getAuthenticatorIds()[J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 294
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 296
    .local v1, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->access$300(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/hardware/biometrics/IBiometricService;->getAuthenticatorIds(I)[J

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    return-object v3

    .line 298
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    throw v3
.end method

.method public hasEnrolledBiometrics(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->access$200(Lcom/android/server/biometrics/AuthService;)V

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->access$300(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricService;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    return v2

    .line 236
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    throw v2
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->access$200(Lcom/android/server/biometrics/AuthService;)V

    .line 244
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 245
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 247
    .local v1, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->access$300(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Landroid/hardware/biometrics/IBiometricService;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    nop

    .line 251
    return-void

    .line 249
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    throw v3
.end method

.method public resetLockout([B)V
    .locals 3
    .param p1, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->access$200(Lcom/android/server/biometrics/AuthService;)V

    .line 267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 269
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->access$300(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricService;->resetLockout([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    nop

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    throw v2
.end method

.method public setActiveUser(I)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->access$200(Lcom/android/server/biometrics/AuthService;)V

    .line 256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 258
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->access$300(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricService;->setActiveUser(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    nop

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    throw v2
.end method
